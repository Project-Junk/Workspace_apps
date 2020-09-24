.class public Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;
.super Landroidx/preference/Preference;
.source "CameraColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$c;,
        Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;,
        Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

.field c:Landroid/os/Handler;

.field private d:[Ljava/lang/String;

.field private e:Landroid/widget/GridView;

.field private f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    .line 150
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    .line 81
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    const-wide/16 v0, 0x0

    .line 56
    iput-wide v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    .line 150
    new-instance p2, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    .line 76
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    const-wide/16 p2, 0x0

    .line 56
    iput-wide p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    .line 150
    new-instance p2, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    .line 71
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    const-wide/16 p2, 0x0

    .line 56
    iput-wide p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    .line 150
    new-instance p2, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$1;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    .line 66
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d:[Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070111

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->h:I

    const v0, 0x7f070112

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->i:I

    const v0, 0x7f070114

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->j:I

    const v0, 0x7f070113

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->k:I

    const v0, 0x7f07010f

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->l:I

    const v0, 0x7f070110

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->m:I

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p4, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    sub-long/2addr p1, p4

    const-wide/16 p4, 0x5dc

    cmp-long p4, p1, p4

    if-gez p4, :cond_0

    .line 109
    iput p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    .line 110
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;

    invoke-interface {p3}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$a;->b()V

    .line 112
    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->c:Landroid/os/Handler;

    invoke-virtual {p3, p4, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 117
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->g:J

    .line 118
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->a(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;->notifyDataSetChanged()V

    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    .line 241
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v1, "camera_lifting_descending_effect_color"

    .line 242
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)[Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I
    .locals 1

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a:I

    return v0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->h:I

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->m:I

    return p0
.end method

.method public static synthetic lambda$FqUtqNa-FYZiVIcf_3xdm_3b8Sk(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->a(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const v0, 0x7f0a0115

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    .line 102
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->l:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 103
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->i:I

    iget v1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->j:I

    iget v2, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->k:I

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 104
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->f:Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference$b;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    new-instance v0, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraColorPickerPreference$FqUtqNa-FYZiVIcf_3xdm_3b8Sk;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/cameraeffect/-$$Lambda$CameraColorPickerPreference$FqUtqNa-FYZiVIcf_3xdm_3b8Sk;-><init>(Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/cameraeffect/CameraColorPickerPreference;->e:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    :cond_0
    return-void
.end method
