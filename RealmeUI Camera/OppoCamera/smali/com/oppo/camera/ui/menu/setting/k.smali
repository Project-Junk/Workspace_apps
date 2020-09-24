.class public Lcom/oppo/camera/ui/menu/setting/k;
.super Landroidx/fragment/app/Fragment;
.source "CameraVideoRatioSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/setting/k$a;
    }
.end annotation


# instance fields
.field private a:I

.field private ae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private af:Lcom/oppo/camera/ui/menu/setting/k$a;

.field private ag:Z

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Lcom/oppo/camera/i;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/oppo/camera/ui/FixedListView;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    .line 57
    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    .line 58
    iput v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const/4 v1, 0x2

    .line 59
    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->d:I

    const/4 v1, 0x0

    .line 60
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->e:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    .line 62
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->g:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->h:Lcom/oppo/camera/ui/FixedListView;

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->i:Landroid/view/View;

    .line 65
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    .line 66
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->af:Lcom/oppo/camera/ui/menu/setting/k$a;

    .line 68
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ag:Z

    .line 69
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ah:Z

    .line 70
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ai:Z

    .line 71
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    .line 72
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ak:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/k;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    return p1
.end method

.method private a(IZ)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1e

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const p1, 0x7f0f01a2

    .line 448
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 445
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x3c

    .line 442
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/k;IZ)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/k;->a(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/k;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 453
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    .line 454
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 455
    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 456
    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildSettingMenuItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const-string v2, "pref_video_size_key"

    .line 367
    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {p1, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p1, "/"

    .line 370
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 373
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 375
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    const/16 p2, 0x1e

    .line 376
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pref_video_fps_key"

    .line 375
    invoke-virtual {p1, v1, p2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "pref_video_ratio_key"

    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/ui/menu/setting/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    .line 418
    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 410
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    goto :goto_0

    .line 414
    :cond_1
    iput p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/k;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/setting/k;I)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f080124

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/FixedListView;

    const/4 v7, 0x1

    .line 208
    invoke-virtual {p1, v7}, Lcom/oppo/camera/ui/FixedListView;->setNestedScrollingEnabled(Z)V

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    const v1, 0x7f0f01b6

    const v2, 0x7f0f01b1

    if-eqz v0, :cond_0

    const v0, 0x7f0f01b3

    .line 213
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    new-instance v8, Lcom/oppo/camera/ui/menu/setting/k$1;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object v2

    const v3, 0x7f0b0081

    const v4, 0x7f080163

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/setting/k$1;-><init>(Lcom/oppo/camera/ui/menu/setting/k;Landroid/content/Context;IILjava/util/List;Lcom/oppo/camera/ui/FixedListView;)V

    .line 255
    invoke-virtual {p1, v8}, Lcom/oppo/camera/ui/FixedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    new-instance v0, Lcom/oppo/camera/ui/menu/setting/k$2;

    invoke-direct {v0, p0, p1, v8}, Lcom/oppo/camera/ui/menu/setting/k$2;-><init>(Lcom/oppo/camera/ui/menu/setting/k;Lcom/oppo/camera/ui/FixedListView;Lcom/oppo/camera/ui/menu/setting/k$a;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/FixedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    invoke-virtual {p1, v7}, Lcom/oppo/camera/ui/FixedListView;->setChoiceMode(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->c(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->af:Lcom/oppo/camera/ui/menu/setting/k$a;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/k$a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/setting/k;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ak:Z

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/setting/k;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/setting/k;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    return p1
.end method

.method private c(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f080123

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/ui/FixedListView;

    const/4 v7, 0x1

    .line 289
    invoke-virtual {p1, v7}, Lcom/oppo/camera/ui/FixedListView;->setNestedScrollingEnabled(Z)V

    .line 291
    new-instance v8, Lcom/oppo/camera/ui/menu/setting/k$3;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object v2

    iget-object v5, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    const v3, 0x7f0b0081

    const v4, 0x7f080163

    move-object v0, v8

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/oppo/camera/ui/menu/setting/k$3;-><init>(Lcom/oppo/camera/ui/menu/setting/k;Landroid/content/Context;IILjava/util/List;Lcom/oppo/camera/ui/FixedListView;)V

    iput-object v8, p0, Lcom/oppo/camera/ui/menu/setting/k;->af:Lcom/oppo/camera/ui/menu/setting/k$a;

    .line 321
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->af:Lcom/oppo/camera/ui/menu/setting/k$a;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/FixedListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 322
    new-instance v0, Lcom/oppo/camera/ui/menu/setting/k$4;

    invoke-direct {v0, p0, p1}, Lcom/oppo/camera/ui/menu/setting/k$4;-><init>(Lcom/oppo/camera/ui/menu/setting/k;Lcom/oppo/camera/ui/FixedListView;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/FixedListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 336
    invoke-virtual {p1, v7}, Lcom/oppo/camera/ui/FixedListView;->setChoiceMode(I)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->d(Ljava/lang/String;)Z

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    const v1, 0x7f0f01a2

    .line 164
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    .line 163
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->a(Ljava/lang/String;Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->i(Z)V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/i;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    return-object p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 3

    const-string v0, "video_size_1080p"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const-string v2, "video_size_720p"

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 435
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const-string v0, "pref_video_size_key"

    invoke-static {v0, p1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v2

    .line 429
    :cond_1
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    return-object v0

    .line 426
    :cond_3
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    if-eqz p1, :cond_4

    const-string v0, "video_size_4kuhd"

    :cond_4
    return-object v0
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video_size_720p"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ag:Z

    return p1

    :cond_0
    const-string v0, "video_size_1080p"

    .line 172
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ah:Z

    return p1

    :cond_1
    const-string v0, "video_size_4kuhd"

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ai:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private e(Ljava/lang/String;)V
    .locals 7

    const-string v0, "video_size_1080p"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v1, -0x1

    .line 388
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x68b69aeb

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x518dde7f

    if-eq v2, v3, :cond_2

    const v0, 0x51d3e2a0

    if-eq v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "video_size_4kuhd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_3
    const-string v0, "video_size_720p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v1, v5

    :cond_4
    :goto_0
    if-eqz v1, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_5

    .line 402
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    goto :goto_2

    .line 398
    :cond_5
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v6

    :goto_1
    iput v5, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    goto :goto_2

    .line 394
    :cond_7
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    goto :goto_2

    .line 390
    :cond_8
    iput v4, p0, Lcom/oppo/camera/ui/menu/setting/k;->a:I

    :goto_2
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/setting/k;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ai:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/menu/setting/k;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ah:Z

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/menu/setting/k;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ag:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/ui/menu/setting/k;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->b:I

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/ui/menu/setting/k;)Ljava/util/List;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    return-object p0
.end method

.method private i(Z)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    goto :goto_0

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_0
    const v0, 0x7f0f01a6

    if-eqz p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    const v1, 0x7f0f01a7

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 192
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/k;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x2

    .line 195
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 196
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->i:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->h:Lcom/oppo/camera/ui/FixedListView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/FixedListView;->setVisibility(I)V

    .line 198
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->g:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->h:Lcom/oppo/camera/ui/FixedListView;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/FixedListView;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->i:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/ui/menu/setting/k;)Lcom/oppo/camera/ui/menu/setting/k$a;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/setting/k;->af:Lcom/oppo/camera/ui/menu/setting/k$a;

    return-object p0
.end method


# virtual methods
.method public E()V
    .locals 1

    .line 145
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->E()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->g:Landroid/widget/LinearLayout;

    .line 148
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->i:Landroid/view/View;

    .line 149
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->h:Lcom/oppo/camera/ui/FixedListView;

    .line 150
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b00ad

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 78
    new-instance p1, Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/oppo/camera/i;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    .line 79
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/c;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo.intent.action.APP_VIDEO_RATIO_SETTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->j()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "pref_camera_id_key"

    .line 85
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const/4 v1, 0x0

    const-string v2, "pref_camera_mode_key"

    .line 86
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->e:Ljava/lang/String;

    const-string v1, "camera_enter_type"

    .line 87
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->d:I

    const-string v1, "camera_support_video_ultra_wide_angel"

    .line 88
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ak:Z

    .line 92
    :cond_0
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_720_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 93
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ag:Z

    .line 94
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_1080_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 95
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ah:Z

    .line 96
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_4K_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 97
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    iput-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->ai:Z

    .line 99
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const-string v2, "pref_video_size_key"

    invoke-static {v2, p1}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 102
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "video_size_4kuhd"

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    goto :goto_3

    .line 108
    :cond_5
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    .line 111
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate, mCameraId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mbSupport720pFps60: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ag:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSupport1080pFps60: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ah:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSupport4kFps60: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->ai:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSupportVideoRatio4K: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->aj:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoRatioSettingAct"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->o()Landroidx/fragment/app/c;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->A()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0801e6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->g:Landroid/widget/LinearLayout;

    .line 131
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->A()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/ui/FixedListView;

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->h:Lcom/oppo/camera/ui/FixedListView;

    .line 132
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/k;->A()Landroid/view/View;

    move-result-object p2

    const v0, 0x7f080211

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->i:Landroid/view/View;

    .line 134
    iget-object p2, p0, Lcom/oppo/camera/ui/menu/setting/k;->f:Lcom/oppo/camera/i;

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/k;->c:I

    const-string v1, "pref_video_size_key"

    .line 135
    invoke-static {v1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/menu/setting/k;->e(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->b(Landroid/view/View;)V

    .line 139
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/menu/setting/k;->c(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/menu/setting/k;->c(Landroid/view/View;)V

    return-void
.end method
