.class final Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;
.super Ljava/lang/Object;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->a(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_captioning_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 218
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceScreen;->setEnabled(Z)V

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iget-object p1, p1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 223
    iget-object p1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;->a:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iget-object p1, p1, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    :cond_2
    return v0
.end method
