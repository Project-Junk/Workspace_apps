.class public Lcom/coloros/settings/feature/multiuser/MultiUserFeature;
.super Lcom/color/injector/adaptor/g;
.source "MultiUserFeature.java"


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "multi_user"
.end annotation


# static fields
.field private static final CREATE_CONFIG_USER_ID:Ljava/lang/String; = "create_config_user_id"

.field public static final DIALOG_ADD_USER_SET:I = 0xa

.field public static final DIALOG_INITIALIZE_USER:I = 0xb

.field public static final KEY_USER_GUEST_CATEGORY:Ljava/lang/String; = "user_guest_category"

.field private static final SHOW_CREATE_CONFIG_GUIDE:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiUserFeature"

.field private static final USERID_UNKNOWN:I = -0xa

.field private static final USER_ICON_REDIUS_DIP:F = 9.6f

.field private static final USER_NAME_MAX_LENGTH_BYTES:I = 0x32

.field private static sUserIconDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/multiuser/a;",
            ">;"
        }
    .end annotation
.end field

.field public mAddUserSetDialogLayoutResId:I

.field private mAddingUserName:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private mUserInitializeCallback:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserSetView:Landroid/view/View;

.field private mUserType:I

.field private mWaitingForActivityResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    const p1, 0x7f0d006c

    .line 82
    iput p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserSetDialogLayoutResId:I

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mWaitingForActivityResult:Z

    .line 104
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string v0, "user"

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;)Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Landroid/content/Context;I)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showToastOne(Landroid/content/Context;I)V

    return-void
.end method

.method public static getDefaultUserIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 425
    invoke-static {}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isStaticEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 428
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->getUserIconDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static getUserIconDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 421
    sget-object v0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->sUserIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static isStaticEnable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$addUserPreference$0(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserSettings;Z)Z
    .locals 1

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "user_me"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 189
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 190
    instance-of v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    if-eqz v0, :cond_1

    .line 191
    check-cast p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    xor-int/2addr p2, p1

    .line 2342
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 2343
    iget-object p0, p0, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->f:Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return p1
.end method

.method private showAddUserDialog(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12

    .line 260
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 261
    iget v1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserSetDialogLayoutResId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserSetView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserSetView:Landroid/view/View;

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorEditText;

    .line 264
    iget-object v1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserSetView:Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/color/support/widget/ColorRoundImageView;

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v5, v1}, Lcom/color/support/widget/ColorRoundImageView;->setClickable(Z)V

    .line 268
    invoke-virtual {v5}, Lcom/color/support/widget/ColorRoundImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    .line 267
    invoke-virtual/range {v3 .. v8}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->createAddUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)Lcom/coloros/settings/feature/multiuser/a;

    move-result-object v9

    .line 269
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;

    .line 271
    iput-object v2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    .line 273
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 274
    invoke-virtual {v3, v10}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1217f5

    .line 275
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserSetView:Landroid/view/View;

    .line 276
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1217ed

    .line 277
    invoke-virtual {v3, v4, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f120491

    .line 278
    invoke-virtual {v3, v4, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 279
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v2

    .line 281
    new-instance v11, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v2

    move-object v6, v0

    move-object v7, v9

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$HkBXgD7ypI_aQylt96mIN3HfzH4;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcolor/support/v7/app/AlertDialog;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {v2, v11}, Lcolor/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 301
    new-array p1, v1, [Landroid/text/InputFilter;

    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;

    const/16 v4, 0x32

    invoke-direct {v3, v4}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/PhoneNameSettingsActivity$a;-><init>(I)V

    aput-object v3, p1, v10

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 304
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    .line 305
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorEditText;->setFastDeletable(Z)V

    .line 306
    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->selectAll()V

    .line 308
    new-instance p1, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;

    invoke-direct {p1, p0, p2, v2}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature$1;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Landroidx/fragment/app/FragmentActivity;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    if-eqz p3, :cond_1

    const-string p1, "state_cropped"

    const-string p2, "state_picture_uri"

    if-eqz p3, :cond_0

    .line 2134
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2135
    invoke-virtual {p3, p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2137
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2138
    invoke-virtual {v9, v0, v1}, Lcom/coloros/settings/feature/multiuser/a;->a(Landroid/net/Uri;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 2145
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2146
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private showInitializeUserDialog(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/FragmentActivity;)Landroid/app/Dialog;
    .locals 1

    .line 232
    new-instance p2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121854

    .line 233
    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const v0, 0x7f12184a

    .line 234
    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$KF0leV5pMeUqu7R2cF-l-irQbQk;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/android/settings/users/UserSettings;)V

    const p1, 0x7f12184c

    .line 235
    invoke-virtual {p2, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$DtH7flbcxdukS18FUvszZmOv3qM;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$DtH7flbcxdukS18FUvszZmOv3qM;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;)V

    const v0, 0x7f12184b

    .line 242
    invoke-virtual {p1, v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private showToastOne(Landroid/content/Context;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 345
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setText(I)V

    .line 350
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public addUserPreference(Lcom/android/settings/users/UserSettings;Landroidx/preference/PreferenceGroup;Lcom/android/settings/users/UserPreference;)Z
    .locals 4

    .line 161
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 164
    :cond_0
    invoke-virtual {p3}, Lcom/android/settings/users/UserPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user_guest"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    const-string v2, "user_guest_category"

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p1, v2}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    .line 166
    invoke-virtual {p3, v1}, Lcom/android/settings/users/UserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 169
    :cond_1
    iget-object v0, p1, Lcom/android/settings/users/UserSettings;->d:Lcom/android/settings/users/f;

    .line 1132
    iget-boolean v0, v0, Lcom/android/settings/users/f;->e:Z

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/settings/users/UserPreference;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {p1, v2}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    check-cast p2, Landroidx/preference/PreferenceGroup;

    .line 173
    invoke-virtual {p3, v1}, Lcom/android/settings/users/UserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p2, p3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 183
    :goto_0
    instance-of p2, p3, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    if-eqz p2, :cond_4

    .line 184
    move-object p2, p3

    check-cast p2, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;

    .line 185
    new-instance v0, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;

    invoke-direct {v0, p3, p1}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$npTyWfqyGX_eSQn7dLyQPfwRi8A;-><init>(Lcom/android/settings/users/UserPreference;Lcom/android/settings/users/UserSettings;)V

    .line 1405
    iput-object v0, p2, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->d:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$c;

    .line 196
    new-instance p3, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;

    invoke-direct {p3, p0, p1}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$YDTvCP0e9i20jT5X_yc2LZQmJWo;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/android/settings/users/UserSettings;)V

    .line 1410
    iput-object p3, p2, Lcom/coloros/settings/feature/multiuser/ColorUserPreference;->e:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$d;

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method createAddUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)Lcom/coloros/settings/feature/multiuser/a;
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 438
    iget-boolean v5, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mWaitingForActivityResult:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->createAddUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)Lcom/coloros/settings/feature/multiuser/a;

    move-result-object p1

    return-object p1
.end method

.method createAddUserPhotoController(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)Lcom/coloros/settings/feature/multiuser/a;
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 444
    new-instance v6, Lcom/coloros/settings/feature/multiuser/a;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/multiuser/a;-><init>(Landroidx/fragment/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V

    return-object v6
.end method

.method public encircleUserIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 493
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x4119999a    # 9.6f

    .line 494
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 496
    invoke-static {p1, p2, v0}, Lcom/coloros/settings/feature/multiuser/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;F)Lcom/coloros/settings/feature/multiuser/b;

    move-result-object p1

    return-object p1
.end method

.method public getAddingUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    :cond_1
    return-object p1
.end method

.method public getDialogMetricsCategory(II)I
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/16 v0, 0xa

    if-eq p2, v0, :cond_2

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    return p1

    :cond_1
    const/16 p1, 0xe11

    return p1

    :cond_2
    const/16 p1, 0xe10

    return p1
.end method

.method public getMaxRealUsers()I
    .locals 1

    .line 483
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 486
    :cond_0
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getRoundDefaultUserIcon(Lcom/android/settings/users/UserSettings;Lcom/android/settings/users/UserPreference;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 465
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p3, :cond_1

    .line 469
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 470
    invoke-virtual {p2}, Lcom/android/settings/users/UserPreference;->d()I

    move-result p2

    .line 469
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/multiuser/c;->a(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    :cond_1
    return-object p3
.end method

.method public getSettingsHandleForMyUserId(Lcom/android/settings/users/UserSettings;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getUserSettingsXml(I)I
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/XmlRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/XmlRes;
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f15006f

    return p1
.end method

.method public synthetic lambda$addUserPreference$1$MultiUserFeature(Lcom/android/settings/users/UserSettings;Landroid/content/pm/UserInfo;Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;)Z
    .locals 0

    .line 197
    iput-object p3, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserInitializeCallback:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;

    const/16 p2, 0xb

    .line 198
    invoke-virtual {p1, p2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic lambda$null$4$MultiUserFeature(Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Lcolor/support/v7/app/AlertDialog;Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddingUserName:Ljava/lang/String;

    .line 291
    :cond_0
    invoke-virtual {p2}, Lcom/coloros/settings/feature/multiuser/a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    sput-object p1, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->sUserIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 292
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserType:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 293
    invoke-virtual {p3}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p5, 0x0

    const-string v0, "20120"

    const-string v1, "add_user"

    invoke-static {p1, v0, v1, p5}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserType:I

    invoke-virtual {p3, p1}, Lcom/android/settings/users/UserSettings;->a(I)V

    .line 295
    invoke-virtual {p4}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 297
    :cond_1
    iput p2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserType:I

    return-void
.end method

.method public synthetic lambda$showAddUserDialog$5$MultiUserFeature(Lcolor/support/v7/app/AlertDialog;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;)V
    .locals 7

    const/4 p5, -0x1

    .line 282
    invoke-virtual {p1, p5}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p5

    if-nez p5, :cond_0

    return-void

    .line 287
    :cond_0
    new-instance v6, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$MultiUserFeature$88_DnGn8ylsbkGsduuYft_ytEeo;-><init>(Lcom/coloros/settings/feature/multiuser/MultiUserFeature;Lcom/color/support/widget/ColorEditText;Lcom/coloros/settings/feature/multiuser/a;Lcom/android/settings/users/UserSettings;Lcolor/support/v7/app/AlertDialog;)V

    invoke-virtual {p5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showInitializeUserDialog$2$MultiUserFeature(Lcom/android/settings/users/UserSettings;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 236
    iget-object p2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserInitializeCallback:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    .line 237
    invoke-interface {p2, p3}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;->shouldInitialize(Z)Z

    .line 239
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "switch_user"

    const-string p3, "user_type"

    const-string v0, "1"

    invoke-static {p1, p2, p3, v0}, Lcom/coloros/settings/utils/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showInitializeUserDialog$3$MultiUserFeature(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 243
    iget-object p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserInitializeCallback:Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 244
    invoke-interface {p1, p2}, Lcom/coloros/settings/feature/multiuser/ColorUserPreference$f;->shouldInitialize(Z)Z

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mWaitingForActivityResult:Z

    .line 391
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/multiuser/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/multiuser/a;->a(IILandroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onCreateDialog(Lcom/android/settings/users/UserSettings;Landroid/app/Dialog;ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p2    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 217
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p2

    .line 220
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_2

    const/16 p4, 0xb

    if-eq p3, p4, :cond_1

    return-object p2

    .line 225
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showInitializeUserDialog(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/FragmentActivity;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 223
    :cond_2
    invoke-direct {p0, p1, v0, p4}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->showAddUserDialog(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/FragmentActivity;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDialogShowing(Lcom/android/settings/users/UserSettings;Landroidx/fragment/app/DialogFragment;)V
    .locals 1

    .line 354
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 360
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 361
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 365
    :cond_2
    invoke-virtual {p2}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0xa

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 368
    :cond_3
    instance-of p2, p1, Lcolor/support/v7/app/AlertDialog;

    if-eqz p2, :cond_4

    .line 369
    iget-object p2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserSetView:Landroid/view/View;

    const v0, 0x1020003

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 370
    check-cast p1, Lcolor/support/v7/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 371
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 372
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mAddUserPhotoControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/multiuser/a;

    .line 2126
    iget-object v1, v0, Lcom/coloros/settings/feature/multiuser/a;->h:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 2127
    iget-object v1, v0, Lcom/coloros/settings/feature/multiuser/a;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "state_picture_uri"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    iget-boolean v0, v0, Lcom/coloros/settings/feature/multiuser/a;->i:Z

    const-string v1, "state_cropped"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public removeGuestPreference(Lcom/android/settings/users/UserSettings;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "user_guest_category"

    .line 154
    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_1
    return-void
.end method

.method public setUpUser(Lcom/android/settings/users/UserSettings;I)Z
    .locals 0

    .line 448
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    :cond_0
    return p2
.end method

.method public shouldJumpInfoSettings(Z)Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldLaunchDetailSettings(Landroid/content/pm/UserInfo;Z)Z
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    if-nez p2, :cond_2

    .line 147
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldShowActionSwitch(Lcom/android/settings/users/UserSettings;)Z
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "user_switcher_enabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x0

    return p1
.end method

.method public showAddUserSetDialog(Lcom/android/settings/users/UserSettings;I)Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 209
    :cond_0
    iput p2, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserType:I

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "showAddUserSetDialog: will show DIALOG_ADD_USER_SET, userType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mUserType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MultiUserFeature"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xa

    .line 211
    invoke-virtual {p1, p2}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public showRemoveUserMenu()Z
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .line 380
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 383
    iput-boolean p1, p0, Lcom/coloros/settings/feature/multiuser/MultiUserFeature;->mWaitingForActivityResult:Z

    return-void
.end method
