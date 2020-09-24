.class public Lcom/color/compat/os/VibratorNative;
.super Ljava/lang/Object;
.source "VibratorNative.java"


# static fields
.field public static LONG_MIDDLE_ONESHOT_TIME:J = 0x96L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static LONG_STRONG_ONESHOT_TIME:J = 0x190L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static MIDDLE_AMPLITUDE:I = 0xaf
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_MIDDLE_ONESHOT_TIME:J = 0x32L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_MIDDLE_WAVEFORM_TIME:[J = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_STRONG_WAVEFORM_AMPLITUDE:[I = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_STRONG_WAVEFORM_TIME:[J = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static RAPID_WEAK_ONESHOT_TIME:J = 0x19L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public static STRONG_AMPLITUDE:I = 0xfa
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VibratorNative"

.field public static WEAK_AMPLITUDE:I = 0x64
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_MIDDLE_WAVEFORM_TIME:[J

    sput-object v0, Lcom/color/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_TIME:[J

    .line 66
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I

    sput-object v0, Lcom/color/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I

    .line 68
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_STRONG_WAVEFORM_TIME:[J

    sput-object v0, Lcom/color/compat/os/VibratorNative;->RAPID_STRONG_WAVEFORM_TIME:[J

    .line 70
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_STRONG_WAVEFORM_AMPLITUDE:[I

    sput-object v0, Lcom/color/compat/os/VibratorNative;->RAPID_STRONG_WAVEFORM_AMPLITUDE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    const/4 v0, 0x0

    .line 88
    invoke-static {p0, p1, v0}, Lcom/color/inner/os/VibratorWrapper;->linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public static linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 93
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/VibratorWrapper;->linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return-void
.end method
