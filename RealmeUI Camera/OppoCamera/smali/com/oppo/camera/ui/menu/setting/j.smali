.class public Lcom/oppo/camera/ui/menu/setting/j;
.super Lcom/oppo/camera/ui/menu/setting/b;
.source "CameraSloganSettingFragment.java"


# instance fields
.field private ae:Lcom/android/ui/menu/CameraSwitchPreference;

.field private af:Lcom/color/support/preference/ColorEditTextPreference;

.field private ag:Landroid/widget/EditText;

.field private ah:Landroid/text/TextWatcher;

.field private ai:Z

.field private e:Lcom/oppo/camera/i;

.field private f:Landroidx/preference/PreferenceScreen;

.field private g:Lcom/color/support/preference/ColorPreferenceCategory;

.field private h:Lcom/android/ui/menu/CameraSwitchPreference;

.field private i:Lcom/android/ui/menu/CameraSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/b;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    .line 57
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    .line 58
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    .line 59
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 61
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 62
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    .line 64
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    .line 65
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ai:Z

    return-void
.end method

.method private aA()Z
    .locals 3

    const v0, 0x7f0f0160

    .line 329
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_location_key"

    .line 332
    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private aB()Z
    .locals 3

    const v0, 0x7f0f0160

    .line 340
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_time_key"

    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private ax()V
    .locals 3

    .line 215
    new-instance v0, Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    .line 216
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;I)V

    const-string v0, "camera_setting_slogan_root_preference"

    .line 219
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    const-string v0, "pref_slogan_device_key"

    .line 220
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 222
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 223
    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 224
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_0
    const-string v0, "pref_slogan_owner_key"

    .line 227
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorEditTextPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    .line 229
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_1

    .line 230
    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/Preference$b;)V

    .line 231
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$WA4V-dGVNAO8PiyjayyBJEBdKGE;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/Preference$c;)V

    .line 232
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    new-instance v2, Lcom/oppo/camera/ui/menu/setting/j$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/j$1;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Landroidx/preference/EditTextPreference$a;)V

    :cond_1
    const-string v0, "pref_slogan_time_key"

    .line 244
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 246
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_2

    .line 247
    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 248
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    :cond_2
    const-string v0, "pref_location_watermark_function"

    .line 251
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorPreferenceCategory;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    const-string v0, "pref_slogan_location_key"

    .line 252
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 254
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_3

    .line 255
    new-instance v2, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;

    invoke-direct {v2, p0}, Lcom/oppo/camera/ui/menu/setting/-$$Lambda$01ijEY1zTh_Ky_HHumcvlVck-1A;-><init>(Lcom/oppo/camera/ui/menu/setting/j;)V

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Landroidx/preference/Preference$b;)V

    .line 256
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/ui/menu/CameraSwitchPreference;->a(Z)V

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->g:Lcom/color/support/preference/ColorPreferenceCategory;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v1, :cond_4

    .line 260
    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->ai:Z

    if-nez v2, :cond_4

    .line 261
    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method private ay()V
    .locals 5

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const-string v1, "CameraSloganSettingFrag"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v2, "pref_slogan_owner_key"

    const-string v3, ""

    .line 274
    invoke-virtual {v0, v2, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->az()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 279
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v3}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    .line 285
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, getLocationAvailable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/oppo/camera/o/d;->i(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isLocationSloganEnable: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aA()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aA()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_1

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    .line 302
    :goto_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->aB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    goto :goto_2

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/ui/menu/CameraSwitchPreference;->e(Z)V

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "update preference failed!"

    .line 269
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private az()Z
    .locals 3

    const v0, 0x7f0f0160

    .line 318
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v2, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_slogan_device_key"

    .line 321
    invoke-virtual {v2, v1, v0}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v0, "on"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    if-eqz v0, :cond_1

    .line 311
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->r()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0f014b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 313
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorEditTextPreference;->c(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public C()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->C()V

    .line 80
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ay()V

    return-void
.end method

.method public D()V
    .locals 2

    .line 86
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->D()V

    .line 88
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public E()V
    .locals 3

    .line 95
    invoke-super {p0}, Lcom/oppo/camera/ui/menu/setting/b;->E()V

    .line 97
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->as()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oppo/camera/i;->a(Landroid/content/Context;)V

    .line 99
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->d()V

    .line 104
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->f:Landroidx/preference/PreferenceScreen;

    .line 107
    :cond_1
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ag:Landroid/widget/EditText;

    .line 108
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ah:Landroid/text/TextWatcher;

    .line 109
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 110
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    .line 111
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 112
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    .line 113
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/b;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f120002

    .line 71
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/j;->e(I)V

    .line 72
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ax()V

    .line 73
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/j;->ay()V

    return-void
.end method

.method public at()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/j;->o()Landroidx/fragment/app/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method protected au()V
    .locals 0

    return-void
.end method

.method protected av()V
    .locals 0

    return-void
.end method

.method protected aw()V
    .locals 0

    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz v1, :cond_2

    .line 160
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "0"

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 164
    :goto_0
    invoke-super {p0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->h:Lcom/android/ui/menu/CameraSwitchPreference;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne p1, v1, :cond_4

    .line 170
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    .line 172
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->e:Lcom/oppo/camera/i;

    const-string v1, "pref_slogan_owner_key"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/menu/setting/j;->b(Ljava/lang/String;)V

    const-string v0, "model_on"

    goto :goto_1

    .line 176
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/j;->af:Lcom/color/support/preference/ColorEditTextPreference;

    invoke-virtual {v1, v0}, Lcom/color/support/preference/ColorEditTextPreference;->a(Z)V

    const-string v0, "model_off"

    .line 180
    :goto_1
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->ae:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_6

    if-ne p1, v0, :cond_6

    .line 186
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "time_on"

    goto :goto_2

    :cond_5
    const-string v0, "time_off"

    .line 192
    :goto_2
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/j;->i:Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_8

    if-ne p1, v0, :cond_8

    .line 198
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "location_on"

    goto :goto_3

    :cond_7
    const-string v0, "location_off"

    .line 204
    :goto_3
    invoke-super {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/b;->b(Landroidx/preference/Preference;Ljava/lang/Object;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 207
    instance-of v0, p1, Lcom/android/ui/menu/CameraSwitchPreference;

    if-eqz v0, :cond_9

    .line 208
    move-object v0, p1

    check-cast v0, Lcom/android/ui/menu/CameraSwitchPreference;

    invoke-virtual {v0, p1, p2}, Lcom/android/ui/menu/CameraSwitchPreference;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    :cond_9
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 118
    instance-of p1, p1, Lcom/color/support/preference/ColorEditTextPreference;

    if-eqz p1, :cond_0

    const-string p1, "pref_camera_slogan_key"

    const-string v0, "author"

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
