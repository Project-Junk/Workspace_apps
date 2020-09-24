.class Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;
.super Ljava/lang/Object;
.source "ColorVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/volume/ColorVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VolumeRow"
.end annotation


# instance fields
.field private anim:Landroid/animation/ObjectAnimator;

.field private animTargetProgress:I

.field private cachedTint:Landroid/content/res/ColorStateList;

.field private defaultStream:Z

.field private dndIcon:Landroid/widget/FrameLayout;

.field private icon:Landroid/widget/ImageButton;

.field private iconMuteRes:I

.field private iconRes:I

.field private iconState:I

.field private important:Z

.field private lastAudibleLevel:I

.field private requestedLevel:I

.field private slider:Landroid/widget/SeekBar;

.field private slider_linear:Landroid/view/View;

.field private ss:Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

.field private stream:I

.field private tracking:Z

.field private userAttempt:J

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2015
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->requestedLevel:I

    const/4 v0, 0x1

    .line 2024
    iput v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$1;)V
    .locals 0

    .line 2006
    invoke-direct {p0}, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->anim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->icon:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;)Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->ss:Lcom/android/systemui/plugins/ColorVolumeDialogController$StreamState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return p0
.end method

.method static synthetic access$1602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->lastAudibleLevel:I

    return p1
.end method

.method static synthetic access$1700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->requestedLevel:I

    return p0
.end method

.method static synthetic access$1702(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->requestedLevel:I

    return p1
.end method

.method static synthetic access$1800(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconState:I

    return p0
.end method

.method static synthetic access$1802(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconState:I

    return p1
.end method

.method static synthetic access$1900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z
    .locals 0

    .line 2006
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->tracking:Z

    return p0
.end method

.method static synthetic access$1902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z
    .locals 0

    .line 2006
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->tracking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/view/View;
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)J
    .locals 2

    .line 2006
    iget-wide v0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;J)J
    .locals 0

    .line 2006
    iput-wide p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->userAttempt:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->view:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return p0
.end method

.method static synthetic access$2102(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->animTargetProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->stream:I

    return p0
.end method

.method static synthetic access$302(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->stream:I

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconRes:I

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconRes:I

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)I
    .locals 0

    .line 2006
    iget p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return p0
.end method

.method static synthetic access$502(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;I)I
    .locals 0

    .line 2006
    iput p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->iconMuteRes:I

    return p1
.end method

.method static synthetic access$600(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z
    .locals 0

    .line 2006
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->important:Z

    return p0
.end method

.method static synthetic access$602(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z
    .locals 0

    .line 2006
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->important:Z

    return p1
.end method

.method static synthetic access$700(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Z
    .locals 0

    .line 2006
    iget-boolean p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->defaultStream:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Z)Z
    .locals 0

    .line 2006
    iput-boolean p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->defaultStream:Z

    return p1
.end method

.method static synthetic access$802(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->dndIcon:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$900(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;
    .locals 0

    .line 2006
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$902(Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;Landroid/widget/SeekBar;)Landroid/widget/SeekBar;
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorVolumeDialogImpl$VolumeRow;->slider:Landroid/widget/SeekBar;

    return-object p1
.end method
