.class public Lcom/coloros/settings/feature/face/FaceSettingsController;
.super Ljava/lang/Object;
.source "FaceSettingsController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/FaceSettingsController$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

.field e:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

.field f:Landroid/hardware/face/FaceManager;

.field g:Z

.field h:Z

.field i:Z

.field j:Landroid/app/Activity;

.field k:Landroidx/preference/PreferenceCategory;

.field l:Landroidx/preference/PreferenceCategory;

.field m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field n:Lcom/coloros/settings/feature/c/a$a;

.field o:Z

.field private p:Lcolor/support/v7/app/AlertDialog;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation
.end field

.field private r:J

.field private s:[B

.field private t:J

.field private u:[B

.field private v:[B

.field private w:I

.field private volatile x:I

.field private volatile y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z[BI)V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->x:I

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->y:I

    .line 127
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->A:Z

    .line 128
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->B:Z

    .line 129
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->C:Z

    .line 130
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->D:Z

    .line 131
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->h:Z

    .line 132
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    .line 144
    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 145
    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->D:Z

    .line 146
    iput-object p3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->s:[B

    .line 147
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->z:Z

    .line 148
    iput p4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->w:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceSettingsController;)Landroid/app/Activity;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 732
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1212f3

    .line 733
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f12097c

    .line 735
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "face_category"

    const-string v1, "key_face_delete"

    const-string v2, "face_screen_light"

    const-string v3, "dont_recongnize_while_eyes_closed"

    const-string v4, "face_recognize_type"

    .line 775
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 778
    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f12095c

    .line 779
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12098a

    .line 780
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const v3, 0x7f120998

    .line 781
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const v3, 0x7f120857

    .line 782
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 784
    invoke-static {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    aput-object v3, v2, v8

    .line 787
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->m(Landroid/content/Context;)Z

    move-result v3

    .line 788
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v9

    .line 789
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->g(Landroid/content/Context;)Z

    move-result v10

    if-eqz v9, :cond_0

    const v11, 0x7f120987

    .line 792
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v7

    const v11, 0x7f120b78

    .line 793
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v8

    :cond_0
    :goto_0
    if-ge v4, v1, :cond_6

    .line 798
    new-instance v8, Lcom/android/settings/search/e;

    invoke-direct {v8, p0}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 799
    aget-object v11, v0, v4

    iput-object v11, v8, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 800
    aget-object v11, v2, v4

    iput-object v11, v8, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 801
    iput-object p3, v8, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 802
    iput-object p2, v8, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const v11, 0x7f0809b5

    .line 803
    iput v11, v8, Lcom/android/settings/search/e;->iconResId:I

    const-string v11, "oppo.intent.action.FACE_SETTINGS"

    .line 804
    iput-object v11, v8, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    if-ne v4, v5, :cond_1

    if-nez v3, :cond_5

    :cond_1
    if-ne v4, v7, :cond_2

    if-nez v9, :cond_2

    if-eqz v10, :cond_5

    :cond_2
    if-ne v4, v6, :cond_3

    if-nez v3, :cond_5

    if-nez v9, :cond_5

    :cond_3
    if-ne v4, v7, :cond_4

    if-nez v3, :cond_5

    .line 817
    :cond_4
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 834
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/os/Message;)V
    .locals 10

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettingsController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4315
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    .line 4345
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4347
    check-cast p1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 4349
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a()V

    .line 4350
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_19

    .line 4351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 4352
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 7390
    iget-object v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->p:Lcolor/support/v7/app/AlertDialog;

    if-nez v4, :cond_1

    .line 7391
    new-instance v4, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7392
    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 7393
    invoke-virtual {v4, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f120f1a

    .line 7394
    invoke-virtual {v4, p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 7395
    new-instance p1, Lcom/coloros/settings/feature/face/FaceSettingsController$6;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$6;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    invoke-virtual {v4, p1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 7401
    invoke-virtual {v4}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->p:Lcolor/support/v7/app/AlertDialog;

    .line 7402
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->p:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v3}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7404
    :cond_1
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_19

    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->C:Z

    if-nez p1, :cond_19

    .line 7405
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->C:Z

    .line 7406
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->p:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    goto/16 :goto_9

    .line 4339
    :pswitch_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->d()V

    .line 4340
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->z:Z

    iget v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->w:I

    iget-wide v5, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->t:J

    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->r:J

    invoke-static/range {v0 .. v9}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V

    return-void

    .line 5227
    :pswitch_2
    iget p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->y:I

    .line 5228
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->f:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->q:Ljava/util/List;

    .line 5229
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5230
    iget v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->x:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->y:I

    if-eq v4, v0, :cond_4

    .line 5231
    :cond_2
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->x:I

    .line 5232
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initFaceData mFaceSizeWhenInit:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5233
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    iget v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->x:I

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v1, v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->initRemainUnlock(Landroid/content/Context;Z)V

    .line 5234
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    new-instance v2, Lcom/coloros/settings/feature/face/FaceSettingsController$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$3;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;->post(Ljava/lang/Runnable;)Z

    .line 5241
    :cond_4
    iput v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->y:I

    if-lez p1, :cond_5

    .line 5242
    iget p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->y:I

    if-nez p1, :cond_5

    .line 5243
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 4318
    :cond_5
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    const/16 p1, 0x3f6

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;->sendEmptyMessage(I)Z

    return-void

    .line 5412
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->q:Ljava/util/List;

    if-eqz p1, :cond_6

    .line 5413
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v3

    :goto_2
    if-eqz p1, :cond_16

    .line 5415
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_7

    .line 5432
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 5433
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 5434
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 5435
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/PrivaryProtectUtils;->getPrivacyProtectState(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 5437
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    goto :goto_3

    .line 5440
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 5441
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockAppEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 5440
    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 5443
    :goto_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FileEncryptUtils;->isFileEncryptEnable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 5445
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    .line 5448
    :cond_9
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    .line 5449
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 5450
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 5701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f121531

    .line 5702
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5703
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v6

    .line 5704
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockAppEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 5705
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockFileEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 5706
    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceSwitchForSecurityCenterEnable(Landroid/content/Context;)Z

    move-result v9

    if-eqz v6, :cond_a

    .line 5707
    iget-boolean v6, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->h:Z

    if-nez v6, :cond_a

    const v6, 0x7f1209e8

    .line 5708
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v7, :cond_c

    .line 5711
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_b

    .line 5712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const v6, 0x7f1209c2

    .line 5714
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_e

    .line 5717
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_d

    .line 5718
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const v6, 0x7f1209c3

    .line 5720
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz v9, :cond_10

    .line 5722
    sget-boolean v6, Lcom/coloros/settings/a;->a:Z

    if-nez v6, :cond_10

    .line 5723
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_f

    .line 5724
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const v5, 0x7f1209e2

    .line 5726
    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5728
    :cond_10
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5450
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 5451
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Z)V

    .line 5452
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 6465
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 6466
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockAppEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 6467
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceUnlockFileEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez v0, :cond_12

    if-nez v1, :cond_12

    if-eqz p1, :cond_11

    goto :goto_4

    .line 6476
    :cond_11
    iget p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    if-ne p1, v2, :cond_18

    .line 6477
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 6478
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    goto/16 :goto_8

    .line 6469
    :cond_12
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 6470
    iget p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    const/4 v0, -0x2

    const-string v1, "coloros_face_unlock_eyes_condition"

    if-ne p1, v2, :cond_14

    .line 6471
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 6761
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5

    :cond_13
    move v2, v3

    .line 6471
    :goto_5
    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_14
    const/4 v4, 0x2

    if-ne p1, v4, :cond_18

    .line 6473
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 6765
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_6

    :cond_15
    move v2, v3

    .line 6473
    :goto_6
    invoke-virtual {p1, v2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    goto :goto_8

    .line 5416
    :cond_16
    :goto_7
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 5417
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 5418
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    .line 5419
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    .line 5420
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 5421
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    .line 5422
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceSwitchForSecurityCenter(Landroid/content/Context;Z)V

    .line 5423
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Z)V

    .line 5424
    iget v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    if-ne v0, v2, :cond_17

    .line 5425
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 5426
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    goto :goto_8

    :cond_17
    if-nez p1, :cond_18

    .line 5428
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 5429
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 5454
    :cond_18
    :goto_8
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->f()V

    .line 4322
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    new-instance v0, Lcom/coloros/settings/feature/face/FaceSettingsController$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$4;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4331
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    new-instance v0, Lcom/coloros/settings/feature/face/FaceSettingsController$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$5;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_19
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/FaceSettingsController;Ljava/util/List;)V
    .locals 4

    .line 3248
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->removeAll()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 3250
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 3251
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "faceCount "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceSettingsController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-lez p1, :cond_1

    .line 3253
    new-instance p1, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const v3, 0x7f1213c8    # 1.9417E38f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const v2, 0x7f0d00c1

    .line 3254
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v2, 0x7f0d00ce

    .line 3255
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    const v2, 0x7f12098a

    .line 3256
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 3257
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->b(I)V

    const-string v3, "key_face_delete"

    .line 3258
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3259
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 4065
    iput-object p0, v2, Lcom/coloros/settings/widget/preference/SettingColorJumpWithActionPreference;->a:Landroid/view/View$OnClickListener;

    goto :goto_1

    .line 3262
    :cond_1
    new-instance p1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {p1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00b1

    .line 3263
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const v2, 0x7f12121a

    .line 3264
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v2, "key_face_add"

    .line 3265
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 3266
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 3268
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 3270
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3272
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->l:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceCategory;->removeAll()V

    .line 3273
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->h:Z

    if-nez p1, :cond_5

    .line 3274
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->l:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3275
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->l:Landroidx/preference/PreferenceCategory;

    new-instance v0, Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3276
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 3277
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3279
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3280
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    .line 3281
    iput v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    .line 3282
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const v1, 0x7f120987

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3283
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->g(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3284
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x1

    .line 3285
    iput p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->E:I

    .line 3286
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const v1, 0x7f120857

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3288
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->b:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 3291
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->f()V

    .line 3293
    :goto_2
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->k:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->c:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 514
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setEnabled(Z)V

    .line 516
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 517
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceRemainUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v2}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 520
    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 519
    :goto_0
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 522
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 524
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    .line 525
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getScreenLightState(Landroid/content/Context;)Z

    move-result p1

    .line 526
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 528
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->a:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 529
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    return-void
.end method

.method private synthetic a([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const-string v1, "face_recognize_type_motor_camera"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const-string v1, "face_recognize_type"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 632
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockRemainUnlockEnabled(Landroid/content/Context;Z)V

    .line 633
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceRemainUnlockBackupEnabled(Landroid/content/Context;Z)V

    .line 634
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->m:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    aget-object p1, p1, p3

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 635
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 740
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1214ef

    .line 741
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f12097d

    .line 743
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/FaceSettingsController;)Ljava/util/List;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->q:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/face/FaceSettingsController;)Lcom/coloros/settings/feature/c/a$a;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->n:Lcom/coloros/settings/feature/c/a$a;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 748
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1211c8

    .line 749
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f121776

    .line 751
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->f:Landroid/hardware/face/FaceManager;

    .line 299
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->f:Landroid/hardware/face/FaceManager;

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->generateChallenge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->r:J

    .line 303
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->z:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 305
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->t:J

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 307
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->t:J

    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/face/FaceSettingsController;)Z
    .locals 1

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->i:Z

    return v0
.end method

.method private e()V
    .locals 3

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "com.android.settings"

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 364
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/utils/q;->h(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    const-class v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 365
    :cond_1
    :goto_0
    const-class v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :goto_1
    iget v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->w:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->s:[B

    const-string v2, "face_hw_auth__token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->v:[B

    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isClicked mFaceToken "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->s:[B

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FaceSettingsController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 374
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 376
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const/16 v2, 0xbbc

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/face/FaceSettingsController;)Z
    .locals 1

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->C:Z

    return v0
.end method

.method private f()V
    .locals 2

    .line 458
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->h:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    .line 460
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 657
    :cond_0
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121138

    .line 658
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1218e7

    .line 659
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1218e6

    new-instance v2, Lcom/coloros/settings/feature/face/FaceSettingsController$8;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$8;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    .line 660
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    new-instance v2, Lcom/coloros/settings/feature/face/FaceSettingsController$7;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/face/FaceSettingsController$7;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    .line 679
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 683
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private h()V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const v1, 0x7f01006b

    const v2, 0x7f010074

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$MQPS76Sf9tXKNQKu2ZPbX2pn42I(Lcom/coloros/settings/feature/face/FaceSettingsController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$l0XoeoDlaXKR22vh7DMYsNP_uT0(Lcom/coloros/settings/feature/face/FaceSettingsController;[Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)Landroid/content/Intent;
    .locals 6

    .line 535
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleActivityResult requestCode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettingsController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xbb9

    if-ne p1, v4, :cond_2

    .line 538
    iget-boolean v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    if-eqz v4, :cond_1

    .line 540
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Intent;)V

    .line 541
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->q:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 542
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    .line 543
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 544
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->e()V

    :goto_0
    return-object p3

    .line 549
    :cond_1
    iget-boolean p3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    if-eqz p3, :cond_5

    .line 550
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-object v2

    :cond_2
    const/16 v4, 0xbbd

    if-ne p1, v4, :cond_3

    .line 553
    iget-boolean v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    if-eqz v4, :cond_3

    .line 554
    iget-boolean v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->D:Z

    if-nez v4, :cond_5

    .line 556
    invoke-virtual {p0, p3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const/16 p3, 0x65

    if-ne p1, p3, :cond_5

    if-ne p2, v0, :cond_5

    .line 558
    iget-boolean p3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    if-eqz p3, :cond_5

    .line 559
    iget-object p3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p3}, Lcom/coloros/settings/utils/q;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 560
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c()V

    goto :goto_1

    .line 562
    :cond_4
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    :cond_5
    :goto_1
    move-object p3, v2

    .line 565
    :goto_2
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    if-ne p2, v2, :cond_7

    .line 566
    iput-boolean v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->A:Z

    .line 567
    iget-object v5, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 568
    invoke-virtual {v5, v2}, Landroid/app/Activity;->setResult(I)V

    .line 569
    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 571
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "resultCode == RESULT_TIMEOUT finish activity="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/16 v1, 0xbbc

    if-ne p1, v1, :cond_a

    .line 573
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz p1, :cond_a

    if-ne p2, v0, :cond_9

    .line 575
    invoke-static {p1, v4}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->initStatusCombination(Landroid/content/Context;Z)V

    .line 576
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "oppo_gesture_wake_up_arouse"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v4, :cond_8

    move v3, v4

    .line 579
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/q;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-nez v3, :cond_a

    .line 580
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->g()V

    goto :goto_3

    .line 583
    :cond_9
    iget-boolean p2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->o:Z

    if-eqz p2, :cond_a

    .line 584
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_a
    :goto_3
    return-object p3
.end method

.method final a()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->e:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    if-eqz v0, :cond_0

    const/16 v1, 0x3f7

    const-wide/16 v2, 0x0

    .line 217
    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/face/FaceSettingsController$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "password"

    .line 594
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->v:[B

    const/4 v0, 0x1

    .line 595
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->B:Z

    const-string v1, "hw_auth_token"

    .line 596
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->u:[B

    const-string v1, "face_hw_auth__token"

    .line 598
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->s:[B

    .line 599
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setPassword mFaceToken "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->s:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mToken="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->u:[B

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSetPassWord "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->B:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fromPassWord true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaceSettingsController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->w:I

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->e:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->d:Lcom/coloros/settings/feature/face/FaceSettingsController$a;

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/feature/face/c;->a(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Handler;)V

    .line 383
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->putFingerFaceSwitchValue(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const-string v0, "FaceSettingsController"

    const-string v1, "mActivity is null"

    .line 385
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final c()V
    .locals 11

    .line 641
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferenceClick face_add mIsSecure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettingsController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    if-eqz v0, :cond_0

    .line 644
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->e()V

    .line 645
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->h()V

    return-void

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->d()V

    .line 648
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    const/16 v2, 0xbb9

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->z:Z

    iget v5, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->w:I

    iget-wide v6, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->t:J

    const/4 v8, 0x1

    iget-wide v9, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->r:J

    invoke-static/range {v1 .. v10}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setPasswordForResult(Landroid/app/Activity;IZZIJZJ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 830
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120609

    .line 831
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    const/4 v1, 0x0

    .line 832
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/face/-$$Lambda$FaceSettingsController$MQPS76Sf9tXKNQKu2ZPbX2pn42I;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/-$$Lambda$FaceSettingsController$MQPS76Sf9tXKNQKu2ZPbX2pn42I;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;)V

    const v1, 0x7f12074e

    .line 833
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 835
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    .line 836
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060087

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 836
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 485
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    iget-object v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    .line 489
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPreferenceChange.newValue = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FaceSettingsController"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "face_screen_light"

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "20012"

    const-string v5, "open"

    const-string v6, "close"

    if-eqz v2, :cond_1

    .line 493
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightState(Landroid/content/Context;Z)V

    .line 494
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setScreenLightStateBackupEnabled(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    const-string p1, "screen_fill_light_switch"

    .line 495
    invoke-interface {v0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object p2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p2, v4, p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    :cond_1
    const-string v2, "dont_recongnize_while_eyes_closed"

    .line 499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 500
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->i:Z

    if-nez v1, :cond_2

    const-string p1, "face_screen_light no already, reaturn"

    .line 501
    invoke-static {v3, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 504
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1756
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, -0x2

    const-string v2, "coloros_face_unlock_eyes_condition"

    invoke-static {p1, v2, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v6

    .line 505
    :goto_1
    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    iget-object p1, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {p1, v4, v2, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 606
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 607
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPreferenceClick key "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaceSettingsController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_face_add"

    .line 608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "face_recognize_type"

    .line 610
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 2617
    new-array p1, p1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 2618
    invoke-static {v2}, Lcom/coloros/settings/feature/face/FaceSettingsController;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, p1, v0

    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 2619
    invoke-static {v0}, Lcom/coloros/settings/feature/face/FaceSettingsController;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v1

    .line 2621
    iget-object v0, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFaceRemainUnlockEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 2623
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/face/FaceSettingsController;->j:Landroid/app/Activity;

    .line 2624
    invoke-static {v3}, Lcom/coloros/settings/feature/face/FaceSettingsController;->c(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/coloros/settings/feature/face/-$$Lambda$FaceSettingsController$l0XoeoDlaXKR22vh7DMYsNP_uT0;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/face/-$$Lambda$FaceSettingsController$l0XoeoDlaXKR22vh7DMYsNP_uT0;-><init>(Lcom/coloros/settings/feature/face/FaceSettingsController;[Ljava/lang/CharSequence;)V

    .line 2625
    invoke-virtual {v2, p1, v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2637
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_1
    :goto_0
    return v1
.end method
