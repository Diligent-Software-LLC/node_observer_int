require_relative 'test_helper'

# NodeObserverIntTest.
# @class_description
#   Tests the NodeObserverInt class.
class NodeObserverIntTest < Minitest::Test

  # Constants.
  CLASS = NodeObserverInt

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   and .yardopts files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(NodeObserverInt::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()

    @pub_cm  = CLASS.public_methods(false)
    @pub_im  = CLASS.public_instance_methods(false)
    @prot_im = CLASS.protected_instance_methods(false)
    @priv_im = CLASS.private_instance_methods(false)
    @priv_cm = CLASS.private_methods(false)

  end

  # test_pubcm_dec().
  # @description
  #   'NodeObserverInt.instance()' was declared.
  def test_pubcm_dec()
    assert_includes(@pub_cm, :instance)
  end

  # test_pubim_dec().
  # @description
  #   'subject(n = nil)', 'changed_node(subject = nil)', 'add(n = nil)',
  #   'remove(n = nil)', and 'subject_changed(subject = nil)' were declared.
  def test_pubim_dec()

    assert_includes(@pub_im, :subject)
    assert_includes(@pub_im, :changed_node)
    assert_includes(@pub_im, :add)
    assert_includes(@pub_im, :remove)
    assert_includes(@pub_im, :subject_changed)

  end

  # test_protim_dec().
  # @description
  #   notify(n = nil)', 'observing(n = nil)', 'changed()',
  #   'add_changed(n = nil)', and 'remove_changed(n = nil)' were declared.
  def test_protim_dec()

    assert_includes(@prot_im, :notify)
    assert_includes(@prot_im, :observing)
    assert_includes(@prot_im, :changed)
    assert_includes(@prot_im, :add_changed)
    assert_includes(@prot_im, :remove_changed)

  end

  # test_privim_dec().
  # @description
  #   'NodeObserverInt.new()', 'observing=(s = nil)', 'changed=(s = nil)',
  #   'initialize(subjects = Set[], changed_subjects = Set[])',
  #   'NodeObserverInt.instance=', and 'receive_change(n = nil)' were declared.
  def test_privm_dec()

    assert_includes(@priv_cm, :new)
    assert_includes(@priv_im, :initialize)
    assert_includes(@priv_im, :observing=)
    assert_includes(@priv_im, :changed=)
    assert_includes(@priv_cm, :instance=)
    assert_includes(@priv_im, :receive_change)

  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
