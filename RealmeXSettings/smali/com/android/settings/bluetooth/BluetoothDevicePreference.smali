.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/d/g$a;


# static fields
.field private static f:I = -0x80000000


# instance fields
.field final a:Lcom/android/settingslib/d/g;

.field b:Lcolor/support/v7/app/AlertDialog;

.field c:Z

.field d:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field e:Landroid/content/res/Resources;

.field private final g:Landroid/os/UserManager;

.field private final h:Z

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/d/g;Z)V
    .locals 2

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->d:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->e:Landroid/content/res/Resources;

    const-string/jumbo v0, "user"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->g:Landroid/os/UserManager;

    .line 74
    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->h:Z

    .line 76
    sget p3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->f:I

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 77
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010033

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 79
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sput p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->f:I

    .line 82
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 83
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/g$a;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/d/g;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f0d0276

    return v0
.end method

.method public final b()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->g:Landroid/os/UserManager;

    const-string v1, "no_config_bluetooth"

    .line 96
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final compareTo(Landroidx/preference/Preference;)I
    .locals 1

    .line 198
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 204
    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/g;)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 51
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 184
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/d/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "bt_checkbox"

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    .line 2496
    iget-object v0, v0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const v0, 0x7f0a05ef

    .line 165
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x1020006

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setElevation(F)V

    .line 179
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public final onDeviceAttributesChanged()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    const/4 v1, 0x0

    .line 1904
    invoke-virtual {v0, v1}, Lcom/android/settingslib/d/g;->d(Z)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-static {v0, v2}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Lcom/android/settingslib/d/g;)Landroid/util/Pair;

    move-result-object v0

    .line 139
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 140
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->i:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->j()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 149
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0}, Lcom/android/settingslib/d/g;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setVisible(Z)V

    .line 152
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->d:Z

    if-eqz v0, :cond_3

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    :cond_3
    return-void
.end method

.method public final onPrepareForRemoval()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/widget/GearPreference;->onPrepareForRemoval()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->a:Lcom/android/settingslib/d/g;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/g$a;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->b:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method
