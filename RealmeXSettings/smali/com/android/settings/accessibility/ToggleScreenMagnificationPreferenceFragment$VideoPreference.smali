.class public Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;
.super Landroidx/preference/Preference;
.source "ToggleScreenMagnificationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoPreference"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 65
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->b:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 9

    .line 70
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705cb

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v1, 0x7f0705ce

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v1, 0x7f0705cc

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v1, 0x7f0705cd

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    const v1, 0x7f0a0781

    .line 82
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a0780

    .line 83
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/VideoView;

    .line 86
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$1;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;)V

    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 94
    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string/jumbo v1, "video_resource"

    .line 98
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "android.resource"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->a:Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    .line 102
    invoke-static {v3}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->b(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const-string p1, "%s://%s/%s"

    .line 100
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    :cond_0
    const/4 p1, 0x0

    .line 107
    invoke-virtual {v4, p1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 110
    new-instance p1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference$2;-><init>(Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;Landroid/widget/VideoView;IIII)V

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 126
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onPrepareForRemoval()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment$VideoPreference;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
