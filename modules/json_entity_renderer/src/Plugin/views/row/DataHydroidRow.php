<?php

namespace Drupal\json_entity_renderer\Plugin\views\row;

use Drupal\Core\Form\FormStateInterface;
use Drupal\views\ViewExecutable;
use Drupal\views\Plugin\views\display\DisplayPluginBase;
use Drupal\Core\Entity\EntityManagerInterface;
use Drupal\Core\Language\LanguageManagerInterface;
use Drupal\views\Entity\Render\EntityTranslationRenderTrait;
use Drupal\views\Plugin\views\row\RowPluginBase;
use Symfony\Component\DependencyInjection\ContainerInterface;

/**
 * Plugin which displays entities for Hydroid.
 *
 * @ingroup views_row_plugins
 *
 * @ViewsRow(
 *   id = "data_hydroid",
 *   title = @Translation("Hydroid Entities"),
 *   help = @Translation("Use entites as row data."),
 * )
 */
class DataHydroidRow extends RowPluginBase {
  use EntityTranslationRenderTrait;
  
  /**
   * {@inheritdoc}
   */
  protected $usesFields = FALSE;

  /**
   * {@inheritdoc}
   */
  protected $usesOptions = TRUE;
	
  /**
   * Contains the entity type of this row plugin instance.
   *
   * @var \Drupal\Core\Entity\EntityTypeInterface
   */
  protected $entityType;

  /**
   * The entity manager.
   *
   * @var \Drupal\Core\Entity\EntityManagerInterface
   */
  public $entityManager;

  /**
   * The language manager.
   *
   * @var \Drupal\Core\Language\LanguageManagerInterface
   */
  protected $languageManager;

  /**
   * {@inheritdoc}
   *
   * @param \Drupal\Core\Entity\EntityManagerInterface $entity_manager
   *   The entity manager.
   * @param \Drupal\Core\Language\LanguageManagerInterface $language_manager
   *   The language manager.
   */
  public function __construct(array $configuration, $plugin_id, $plugin_definition, EntityManagerInterface $entity_manager, LanguageManagerInterface $language_manager) {
    parent::__construct($configuration, $plugin_id, $plugin_definition);

    $this->entityManager = $entity_manager;
    $this->languageManager = $language_manager;
  }

  /**
   * {@inheritdoc}
   */
  public static function create(ContainerInterface $container, array $configuration, $plugin_id, $plugin_definition) {
    return new static($configuration, $plugin_id, $plugin_definition, $container->get('entity.manager'), $container->get('language_manager'));
  }

   /**
   * {@inheritdoc}
   */
  public function init(ViewExecutable $view, DisplayPluginBase $display, array &$options = NULL) {
    parent::init($view, $display, $options);
    if (!empty($this->options['hydroid_options'])) {
      $options = (array) $this->options['hydroid_options'];
    }
  }

  /**
   * {@inheritdoc}
   */
  protected function defineOptions() {
    $options = parent::defineOptions();
    $options['field_options'] = ['default' => []];

    return $options;
  }

  /**
   * {@inheritdoc}
   */
  public function buildOptionsForm(&$form, FormStateInterface $form_state) {
    parent::buildOptionsForm($form, $form_state);

        $form['rootType'] = [
          '#title' => $this->t('Content type to treat as root'),
          //'#title_display' => 'invisible',
          '#type' => 'select',
	  '#options' => node_type_get_names(),
	  '#default_value' => 'defaultVal',
	  '#multiple' => 'FALSE',
	  '#size' => '0',
        ];
  }

  public function getRootType(){
    $keys = array_keys($this->options['rootType']);
    return $this->options['rootType'][$keys[0]];
  }

  /**
   * {@inheritdoc}
   */
  public function render($row) {
    return $this->getEntityTranslation($row->_entity, $row);
  }

  /**
   * {@inheritdoc}
   */
  public function getEntityTypeId() {
    return $this->view->getBaseEntityType()->id();
  }

  /**
   * {@inheritdoc}
   */
  protected function getEntityManager() {
    return $this->entityManager;
  }

  /**
   * {@inheritdoc}
   */
  protected function getLanguageManager() {
    return $this->languageManager;
  }

  /**
   * {@inheritdoc}
   */
  protected function getView() {
    return $this->view;
  }

  /**
   * {@inheritdoc}
   */
 public function query() {
    parent::query();
    $this->getEntityTranslationRenderer()->query($this->view->getQuery());
  }

  
  /**
   * Extracts a set of option values from a nested options array.
   *
   * @param string $key
   *   The key to extract from each array item.
   * @param array $options
   *   The options array to return values from.
   *
   * @return array
   *   A regular one dimensional array of values.
   */
  protected static function extractFromOptionsArray($key, $options) {
    return array_map(function($item) use ($key) {
      return isset($item[$key]) ? $item[$key] : NULL;
    }, $options);
  }

}
