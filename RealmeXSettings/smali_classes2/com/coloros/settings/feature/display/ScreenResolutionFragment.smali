.class public Lcom/coloros/settings/feature/display/ScreenResolutionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenResolutionFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

.field private e:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

.field private f:Landroidx/preference/PreferenceScreen;

.field private g:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private h:Landroid/widget/Toast;

.field private i:Lcolor/support/v7/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment$1;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment$1;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    return-void
.end method

.method private synthetic a()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->f:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/v;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->f:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 115
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 117
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-ne p1, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 118
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic a(IILandroid/content/DialogInterface;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(II)Z

    return-void
.end method

.method private synthetic a(ILandroid/content/DialogInterface;)V
    .locals 1

    const-string p2, "ScreenResolutionFragment"

    const-string v0, "onPreferenceTreeClick: cancel listener"

    .line 164
    invoke-static {p2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    return-void
.end method

.method private synthetic a(ILandroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "ScreenResolutionFragment"

    const-string p3, "onPreferenceTreeClick: negative listener"

    .line 160
    invoke-static {p2, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    return-void
.end method

.method private a(II)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p2, p1, :cond_7

    const/4 v1, 0x0

    const-string v2, "ScreenResolutionFragment"

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    if-ne p1, v4, :cond_1

    :cond_0
    :try_start_0
    const-string p2, "SurfaceFlinger"

    .line 1266
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    const-string v6, "android.ui.ISurfaceComposer"

    .line 1269
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v5, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v6, 0x3f0

    .line 1271
    invoke-interface {p2, v6, v5, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1272
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v5, "forceGPUComposition fail, RemoteException:"

    .line 1275
    invoke-static {v2, v5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    if-ne p1, v4, :cond_2

    const-string p2, "ro.density.screenzoom.fdh"

    .line 192
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "ro.density.screenzoom.qdh"

    .line 194
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    :goto_1
    invoke-static {p2}, Lcom/coloros/settings/utils/al;->g(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, ","

    .line 198
    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 199
    array-length v1, p2

    new-array v1, v1, [I

    move v5, v3

    .line 200
    :goto_2
    array-length v6, p2

    if-ge v5, v6, :cond_3

    .line 201
    aget-object v6, p2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 204
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-static {p2}, Lcom/coloros/settings/utils/al;->aq(Landroid/content/Context;)I

    move-result p2

    if-ne p1, v4, :cond_5

    if-eqz v1, :cond_4

    .line 207
    aget p2, v1, p2

    invoke-static {p2}, Lcom/android/settingslib/f/b;->a(I)V

    goto :goto_3

    :cond_4
    const/16 p2, 0x1a4

    .line 209
    invoke-static {p2}, Lcom/android/settingslib/f/b;->a(I)V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_6

    .line 213
    aget p2, v1, p2

    invoke-static {p2}, Lcom/android/settingslib/f/b;->a(I)V

    goto :goto_3

    .line 215
    :cond_6
    invoke-static {}, Lcom/android/settingslib/f/b;->a()V

    .line 219
    :goto_3
    iget-object p2, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "coloros_screen_resolution_adjust"

    invoke-static {p2, v1, p1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "onPreferenceClick set mode "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    const-string v1, "screen_resolution"

    invoke-static {p2, v1, v1, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    .line 227
    iget-object p2, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/v;->c(Landroid/content/Context;I)V

    return v0

    .line 187
    :cond_7
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    return v0
.end method

.method public static synthetic lambda$VfabPgroHlF68Sle2-rGiUzVBBI(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$h2bjfOQDeK_Uu86ibefl5LPRkaA(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;ILandroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(ILandroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$m5EKc-GnKo2066WZFt0IcqT7Z-4(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a()V

    return-void
.end method

.method public static synthetic lambda$zEXitXU7VW6coysl69FoL8qN_Pk(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;IILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(IILandroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    const p1, 0x7f1500e3

    .line 90
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->addPreferencesFromResource(I)V

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->f:Landroidx/preference/PreferenceScreen;

    const-string p1, "screen_resolution_auto"

    .line 92
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->b:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "screen_resolution_fhd"

    .line 93
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->c:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "screen_resolution_qhd"

    .line 94
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->d:Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    const-string p1, "disable_qhd_category"

    .line 95
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->g:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    const-string p1, "disable_qhd_preference"

    .line 96
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->e:Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;

    .line 1251
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    const v1, 0x7f120f98

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1252
    iget-object v1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v3, 0x7f120e8e

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1253
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1254
    new-instance v3, Lcom/color/support/widget/ColorClickableSpan;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/color/support/widget/ColorClickableSpan;-><init>(Landroid/content/Context;)V

    .line 1256
    new-instance v4, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$m5EKc-GnKo2066WZFt0IcqT7Z-4;

    invoke-direct {v4, p0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$m5EKc-GnKo2066WZFt0IcqT7Z-4;-><init>(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;)V

    invoke-virtual {v3, v4}, Lcom/color/support/widget/ColorClickableSpan;->setStatusBarClickListener(Lcom/color/support/widget/ColorClickableSpan$SpannableStrClickListener;)V

    .line 1259
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1260
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const/16 v4, 0x21

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 97
    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorSpannablePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 243
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 6

    .line 123
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_qhd_preference"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_resolution_fhd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "screen_resolution_auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v1

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "coloros_screen_resolution_adjust"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPreferenceTreeClick: lastMode: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenResolutionFragment"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v0, p1, :cond_4

    .line 136
    invoke-static {}, Lcom/coloros/settings/utils/al;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string p1, "onPreferenceTreeClick: click fast, will return true;"

    .line 137
    invoke-static {v5, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->h:Landroid/widget/Toast;

    if-nez p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    const v1, 0x7f12130d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->h:Landroid/widget/Toast;

    .line 144
    :cond_3
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    return v2

    :cond_4
    if-eq v0, p1, :cond_6

    if-ne p1, v1, :cond_6

    .line 153
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_5

    .line 155
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-direct {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f121314

    .line 156
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f120139

    .line 157
    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v3, 0x7f120f1b

    new-instance v4, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$zEXitXU7VW6coysl69FoL8qN_Pk;

    invoke-direct {v4, p0, v1, v0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$zEXitXU7VW6coysl69FoL8qN_Pk;-><init>(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;II)V

    .line 158
    invoke-virtual {p1, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120491

    new-instance v3, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$VfabPgroHlF68Sle2-rGiUzVBBI;

    invoke-direct {v3, p0, v0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$VfabPgroHlF68Sle2-rGiUzVBBI;-><init>(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;I)V

    .line 159
    invoke-virtual {p1, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$h2bjfOQDeK_Uu86ibefl5LPRkaA;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/display/-$$Lambda$ScreenResolutionFragment$h2bjfOQDeK_Uu86ibefl5LPRkaA;-><init>(Lcom/coloros/settings/feature/display/ScreenResolutionFragment;I)V

    .line 163
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 167
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    .line 169
    :cond_5
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 171
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    .line 172
    iget-object p1, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->i:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto :goto_1

    .line 175
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(II)Z

    :cond_7
    :goto_1
    return v2
.end method

.method public onResume()V
    .locals 4

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "coloros_screen_resolution_adjust"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 105
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/ScreenResolutionFragment;->a(I)V

    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
