.class public Lcom/android/settings/notification/VolumeSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "VolumeSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/VolumeSeekBarPreference$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/SeekBar;

.field public b:I

.field protected c:Lcom/android/sdk/a;

.field public d:Lcom/android/settings/notification/VolumeSeekBarPreference$a;

.field protected e:Landroid/widget/ImageView;

.field public f:Z

.field public g:Z

.field h:Landroid/media/AudioManager;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private q:Landroid/widget/TextView;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0272

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string v0, "audio"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x7f0d0272

    .line 74
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 75
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f0d0272

    .line 68
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p2, 0x7f0d0272

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setLayoutResource(I)V

    const-string p2, "audio"

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 85
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    .line 86
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->d(I)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMinVolumeInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->e(I)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->h:Landroid/media/AudioManager;

    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->r:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->r:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->h()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->s:I

    if-ne v0, p1, :cond_0

    return-void

    .line 172
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->s:I

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f()V

    return-void
.end method

.method protected c()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->a:Landroid/widget/SeekBar;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance v0, Lcom/android/settings/notification/VolumeSeekBarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference$1;-><init>(Lcom/android/settings/notification/VolumeSeekBarPreference;)V

    .line 143
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->g()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 144
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    if-nez v2, :cond_2

    .line 145
    new-instance v2, Lcom/android/sdk/a;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->b:I

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/sdk/a;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/sdk/a$a;)V

    iput-object v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    invoke-virtual {v0}, Lcom/android/sdk/a;->f()V

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/sdk/a;->a(Landroid/widget/SeekBar;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->h()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->a:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    invoke-virtual {v0}, Lcom/android/sdk/a;->e()V

    :cond_3
    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 177
    iget v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->t:I

    if-ne v0, p1, :cond_0

    return-void

    .line 178
    :cond_0
    iput p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->t:I

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->f()V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->u:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->u:Z

    .line 105
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/sdk/a;->e()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->c:Lcom/android/sdk/a;

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->s:I

    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 161
    :cond_1
    iget v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->t:I

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->f:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->g:Z

    if-nez v2, :cond_2

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected final g()Landroid/net/Uri;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.resource://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/2131820588"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->a:Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 198
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->q:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "com.android.internal.R.id.seekbar"

    .line 114
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->a:Landroid/widget/SeekBar;

    const-string v0, "com.android.internal.R.id.icon"

    .line 115
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a069a

    .line 116
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreference;->q:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->c()V

    return-void
.end method
