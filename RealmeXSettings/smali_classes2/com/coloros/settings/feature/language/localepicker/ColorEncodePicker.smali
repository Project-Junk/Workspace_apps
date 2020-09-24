.class public Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorEncodePicker.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/coloros/settings/utils/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZG(Zawgyi)"

    const-string v1, "Unicode"

    .line 37
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->c:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance p1, Lcom/coloros/settings/utils/ab;

    const-string v0, "ColorosEncodePicker"

    invoke-direct {p1, v0}, Lcom/coloros/settings/utils/ab;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->e:Lcom/coloros/settings/utils/ab;

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "oppoWizardRun"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->c:Z

    .line 57
    iget-boolean p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->c:Z

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    const v2, 0x7f06001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/e;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 62
    sget-object p1, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    goto :goto_0

    .line 64
    :cond_2
    sget-object p1, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    :goto_0
    const v1, 0x7f1500b6

    .line 66
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->addPreferencesFromResource(I)V

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->d:Ljava/util/List;

    .line 69
    sget-object v2, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 70
    new-instance v5, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setKey(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 75
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 76
    iget-object v4, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->d:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v5, p0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->e:Lcom/coloros/settings/utils/ab;

    invoke-virtual {v0}, Lcom/coloros/settings/utils/ab;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    .line 1103
    iget-object v2, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->d:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    .line 1107
    invoke-virtual {v4}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->getOrder()I

    move-result v5

    if-ne v0, v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    goto :goto_0

    .line 88
    :cond_2
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 90
    iget-boolean v2, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->c:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    :cond_3
    if-eqz p1, :cond_4

    .line 95
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->a(Landroid/content/Context;)Z

    goto :goto_2

    .line 97
    :cond_4
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->c(Landroid/content/Context;)Z

    :goto_2
    return v1
.end method

.method public shouldSetOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportFullScreen()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
