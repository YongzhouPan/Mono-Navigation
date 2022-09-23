from configargparse import Namespace


def get_opts():

    CONFIG = 'configs/v2/nyu.txt'
    DATASET_DIR = None
    DATASET_NAME = 'nyu'
    SEQUENCE_LENGTH = 3
    SKIP_FRAMES = 1
    MODEL_VERSION = 'v2'
    RESNET_LAYERS = 18
    CKPT_PATH = 'ckpts/nyu_scv2/version_10/epoch=101-val_loss=0.1580.ckpt'
    PHOTO_WEIGHT = 1.0
    GEOMETRY_WEIGHT = 0.5
    SMOOTH_WEIGHT = 0.1
    ROT_T_WEIGHT = 0.5
    ROT_C_WEIGHT = 0.1
    VAL_MODE = 'depth'
    NO_SSIM = False
    NO_SUTO_MASK = False
    NO_DYNAMiC_MASK = False
    NO_MIN_OPTIMAIZE = False
    EXP_NAME = 'nyu_scv2'
    BATCH_SIZE = 8
    EPOCH_SIZE = 1000
    NUM_EPOCHS = 100
    LR = 0.0001
    NUM_GPUs = 1
    
    parser = Namespace(
        config=CONFIG,
        dataset_dir=DATASET_DIR,
        dataset_name=DATASET_NAME,
        sequence_length=SEQUENCE_LENGTH,
        skip_frames=SKIP_FRAMES,
        model_version=MODEL_VERSION,
        resnet_layers=RESNET_LAYERS,
        ckpt_path=CKPT_PATH, photo_weight=PHOTO_WEIGHT,
        geometry_weight=GEOMETRY_WEIGHT,
        smooth_weight=SMOOTH_WEIGHT,
        rot_t_weight=ROT_T_WEIGHT,
        rot_c_weight=ROT_C_WEIGHT,
        val_mode=VAL_MODE,
        no_ssim=NO_SSIM,
        no_auto_mask=NO_SUTO_MASK,
        no_dynamic_mask=NO_DYNAMiC_MASK,
        no_min_optimize=NO_MIN_OPTIMAIZE,
        exp_name=EXP_NAME,
        batch_size=BATCH_SIZE,
        epoch_size=EPOCH_SIZE,
        num_epochs=NUM_EPOCHS,
        lr=LR,
        num_gpus=NUM_GPUs
        )

    return parser
