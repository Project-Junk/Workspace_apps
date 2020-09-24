.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;
.super Lcom/android/settings/tts/TextToSpeechSettings;
.source "ColorTextToSpeechSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/android/settingslib/widget/LayoutPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    .line 97
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->b(I)V

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->c:I

    const-string v1, "tts_default_rate"

    invoke-static {p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final c()I
    .locals 1

    const v0, 0x7f15006d

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 66
    invoke-super {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f121744

    const-string v2, ":settings:show_fragment_title_resid"

    .line 68
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->b()V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->a()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0727
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    instance-of p1, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->a:Lcom/android/settings/widget/SeekBarPreference;

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const v0, 0x7f121728

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(I)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    instance-of p1, p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->b:Lcom/android/settings/widget/SeekBarPreference;

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;

    const v0, 0x7f12172a

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorSeekBarPreference;->a(I)V

    :cond_1
    const-string p1, "action_buttons"

    .line 56
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->f:Lcom/android/settingslib/widget/LayoutPreference;

    .line 57
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->f:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a0727

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->e:Landroid/widget/Button;

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->e:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->e:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->f:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a0728

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->d:Landroid/widget/Button;

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorTextToSpeechSettings;->d:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
