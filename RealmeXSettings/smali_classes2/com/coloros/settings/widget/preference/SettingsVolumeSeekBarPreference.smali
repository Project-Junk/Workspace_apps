.class public Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;
.super Lcom/android/settings/notification/VolumeSeekBarPreference;
.source "SettingsVolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;
    }
.end annotation


# instance fields
.field public q:Lcom/coloros/settings/widget/SettingsSeekBar;

.field public r:I

.field private s:Landroid/widget/TextView;

.field private t:I

.field private u:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/VolumeSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x7f0d023d

    .line 55
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->setLayoutResource(I)V

    const/4 p1, -0x1

    .line 56
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->t:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->t:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->g:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b:I

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f:Z

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->g:Z

    return p0
.end method

.method private n()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->a(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->getProgress()I

    move-result v0

    if-eqz p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->getMax()I

    move-result p1

    add-int/lit8 v0, v0, 0x64

    .line 177
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-ge v0, p1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x64

    .line 181
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    return-void
.end method

.method public final c()V
    .locals 5

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->g()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    if-nez v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->u:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;

    if-nez v1, :cond_2

    .line 92
    new-instance v1, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;

    invoke-direct {v1, p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;-><init>(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)V

    iput-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->u:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;

    .line 94
    :cond_2
    new-instance v1, Lcom/coloros/settings/widget/b;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b:I

    iget-object v4, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->u:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/coloros/settings/widget/b;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/coloros/settings/widget/b$a;)V

    iput-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    invoke-virtual {v0}, Lcom/android/sdk/a;->f()V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    instance-of v0, v0, Lcom/coloros/settings/widget/b;

    if-eqz v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    check-cast v0, Lcom/coloros/settings/widget/b;

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    iget v2, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/widget/b;->a(Lcom/coloros/settings/widget/SettingsSeekBar;I)V

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f()V

    .line 102
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->h()V

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    .line 105
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    invoke-virtual {v0}, Lcom/android/sdk/a;->e()V

    :cond_6
    return-void
.end method

.method public final e()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->e()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->u:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;

    return-void
.end method

.method public final f()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->r:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->n()I

    move-result v0

    if-gtz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    iget v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->r:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 135
    :cond_1
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const v0, 0x7f0a0792

    .line 74
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->s:Landroid/widget/TextView;

    const v0, 0x7f0a05db

    .line 75
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/SettingsSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->q:Lcom/coloros/settings/widget/SettingsSeekBar;

    const v0, 0x7f0a0393

    .line 76
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->s:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 123
    invoke-direct {p0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->n()I

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    invoke-interface {p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$a;->a()V

    return-void
.end method
