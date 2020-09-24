.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final b:[I


# instance fields
.field public a:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->b:[I

    .line 195
    new-instance v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x7f100004
        0x7f100008
        0x7f100006
        0x7f100005
        0x7f100007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 0

    add-int/lit16 p0, p0, -0xc8

    .line 192
    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method public static a(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-gt p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    .line 1101
    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->b:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x320

    .line 1103
    sget-object v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->b:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    div-int/2addr v1, v3

    add-int/lit16 v3, p1, -0xc8

    .line 1105
    div-int v1, v3, v1

    .line 89
    :goto_0
    sget-object v3, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->b:[I

    aget v1, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 89
    invoke-virtual {p0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 149
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->a()V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_autoclick_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 153
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->a(Lcom/android/settings/widget/SwitchBar$a;)V

    .line 155
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SeekBarPreference;->setEnabled(Z)V

    return-void
.end method

.method public getHelpResource()I
    .locals 1

    const v0, 0x7f120aa2

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14f

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150001

    return v0
.end method

.method protected final i_()V
    .locals 1

    .line 160
    invoke-super {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->i_()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->b(Lcom/android/settings/widget/SwitchBar$a;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_autoclick_delay"

    const/16 v1, 0x258

    .line 133
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "autoclick_delay"

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x3e8

    invoke-static {v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->d(I)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->f(I)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SeekBarPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f12004b

    .line 144
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    .line 174
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    add-int/lit16 p2, p2, 0xc8

    const-string v0, "accessibility_autoclick_delay"

    .line 172
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    const-string p1, "accessibility_autoclick_enabled"

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method
