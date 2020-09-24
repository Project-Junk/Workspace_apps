.class public Lcom/android/settings/datausage/SpinnerPreference;
.super Landroidx/preference/Preference;
.source "SpinnerPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/b$b;


# instance fields
.field private a:Lcom/android/settings/datausage/b;

.field private b:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private c:Ljava/lang/Object;

.field private d:I

.field private final e:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Lcom/android/settings/datausage/SpinnerPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/SpinnerPreference$1;-><init>(Lcom/android/settings/datausage/SpinnerPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->e:Landroid/widget/AdapterView$OnItemSelectedListener;

    const p1, 0x7f0d013c

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/SpinnerPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/datausage/SpinnerPreference;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->d:I

    return p0
.end method

.method static synthetic a(Lcom/android/settings/datausage/SpinnerPreference;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->d:I

    return p1
.end method

.method static synthetic a(Lcom/android/settings/datausage/SpinnerPreference;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/datausage/SpinnerPreference;)Lcom/android/settings/datausage/b;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->a:Lcom/android/settings/datausage/b;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/datausage/SpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->d:I

    .line 59
    iget-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->a:Lcom/android/settings/datausage/b;

    iget v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->d:I

    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->c:Ljava/lang/Object;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/datausage/SpinnerPreference;->notifyChanged()V

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->b:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public final a(Lcom/android/settings/datausage/b;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/datausage/SpinnerPreference;->a:Lcom/android/settings/datausage/b;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/datausage/SpinnerPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01c0

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;

    .line 67
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->a:Lcom/android/settings/datausage/b;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 68
    iget v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->d:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;->setSelection(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->e:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a01c0

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void
.end method
