.class public Lcom/coloros/settings/feature/password/a;
.super Lcom/android/settings/password/b;
.source "ColorChooseLockSettingsHelper.java"


# static fields
.field private static final f:Ljava/lang/String; = "com.coloros.settings.feature.password.a"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/a;->e:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/4 p1, 0x0

    .line 53
    iput-boolean p1, p0, Lcom/coloros/settings/feature/password/a;->e:Z

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJZJI)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZJZJI)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    .line 160
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string p1, "com.android.settings.ConfirmCredentials.header"

    .line 161
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string p2, "com.android.settings.ConfirmCredentials.details"

    .line 162
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const/4 p2, 0x0

    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    .line 163
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    .line 164
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    .line 165
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    .line 166
    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p5, "return_credentials"

    .line 167
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "has_challenge"

    .line 168
    invoke-virtual {v0, p4, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "challenge"

    .line 169
    invoke-virtual {v0, p4, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p4, "has_face_challenge"

    .line 171
    invoke-virtual {v0, p4, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p4, "face_challenge"

    .line 172
    invoke-virtual {v0, p4, p10, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 p4, 0x1

    const-string p5, ":settings:hide_drawer"

    .line 175
    invoke-virtual {v0, p5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p5, "android.intent.extra.USER_ID"

    .line 176
    invoke-virtual {v0, p5, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    iget-object p5, p0, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 178
    iget-object p5, p0, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const-string p6, "start_type"

    invoke-virtual {v0, p6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iput-object p1, p0, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object p5, p0, Lcom/coloros/settings/feature/password/a;->g:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 182
    iget-object p5, p0, Lcom/coloros/settings/feature/password/a;->g:Ljava/lang/String;

    const-string p6, "customize_head_str"

    invoke-virtual {v0, p6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iput-object p1, p0, Lcom/coloros/settings/feature/password/a;->g:Ljava/lang/String;

    .line 185
    :cond_1
    iget-boolean p1, p0, Lcom/coloros/settings/feature/password/a;->e:Z

    if-eqz p1, :cond_2

    const-string p1, "for_fingerprint_reset"

    .line 186
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    iput-boolean p2, p0, Lcom/coloros/settings/feature/password/a;->e:Z

    .line 189
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.settings"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZIJJ)V
    .locals 9

    move-object v0, p0

    move v8, p4

    const/4 v1, 0x1

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 1215
    :goto_1
    new-instance v3, Lcom/coloros/settings/feature/password/a;

    move-object v4, p1

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/password/a;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const-string v4, ""

    .line 2194
    iput-object v4, v3, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    .line 3057
    iput-boolean v1, v3, Lcom/coloros/settings/feature/password/a;->e:Z

    if-eqz v2, :cond_2

    const/16 v2, 0xa

    move-object v1, v3

    move-wide v3, p5

    move-wide/from16 v5, p7

    move v7, p4

    .line 1220
    invoke-virtual/range {v1 .. v7}, Lcom/coloros/settings/feature/password/a;->a(IJJI)Z

    move-result v1

    goto :goto_2

    :cond_2
    const/16 v2, 0xa

    const/4 v4, 0x0

    .line 1223
    invoke-virtual {v3, v2, v4, v1, p4}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const v2, 0x7f01006b

    const v3, 0x7f010074

    .line 1227
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1231
    :cond_3
    sget-object v0, Lcom/coloros/settings/feature/password/a;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "launchConfirmationActivity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/c/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(ILjava/lang/Class;ZJZJI)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;ZJZJI)Z"
        }
    .end annotation

    move-object v13, p0

    move/from16 v14, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v3, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move-wide/from16 v10, p7

    move/from16 v12, p9

    .line 135
    invoke-direct/range {v0 .. v12}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJZJI)Landroid/content/Intent;

    move-result-object v0

    .line 147
    iget-object v1, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0, v14}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, v13, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0, v14}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(IJJI)Z
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    cmp-long v0, p4, v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v7, v3

    goto :goto_1

    :cond_1
    move-object v0, p0

    move v7, v4

    .line 75
    :goto_1
    iget-object v1, v0, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    move/from16 v2, p6

    .line 77
    invoke-static {v1, v2}, Lcom/android/settings/m;->b(Landroid/content/Context;I)I

    move-result v10

    move-object v2, p0

    move v3, p1

    move v4, v5

    move-wide v5, p2

    move-wide v8, p4

    .line 75
    invoke-virtual/range {v2 .. v10}, Lcom/coloros/settings/feature/password/a;->a(IZJZJI)Z

    move-result v1

    return v1
.end method

.method public final a(IZJZJI)Z
    .locals 11

    move-object v10, p0

    .line 95
    iget-object v0, v10, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move/from16 v9, p8

    invoke-virtual {v0, v9}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 98
    iget-object v1, v10, Lcom/coloros/settings/feature/password/a;->a:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    const-class v2, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/Class;ZJZJI)Z

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    const-class v2, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    move-object v0, p0

    move v1, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/Class;ZJZJI)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final a(Landroid/app/Activity;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 18

    move-object/from16 v13, p0

    .line 237
    invoke-static/range {p1 .. p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move/from16 v12, p10

    invoke-virtual {v0, v12}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    move-object/from16 v1, p2

    .line 238
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v14

    const/high16 v15, 0x10000

    if-eq v14, v15, :cond_3

    const/high16 v0, 0x20000

    if-eq v14, v0, :cond_0

    const/high16 v0, 0x30000

    if-eq v14, v0, :cond_0

    const/high16 v0, 0x40000

    if-eq v14, v0, :cond_0

    const/high16 v0, 0x50000

    if-eq v14, v0, :cond_0

    const/high16 v0, 0x60000

    if-eq v14, v0, :cond_0

    const/high16 v0, 0x80000

    if-eq v14, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    goto :goto_3

    :cond_0
    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_1

    .line 3303
    :cond_1
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_0

    :cond_2
    :goto_1
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    goto :goto_0

    :cond_3
    if-nez p5, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 3294
    :cond_4
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_0

    :cond_5
    :goto_2
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    goto :goto_0

    :goto_3
    if-nez v3, :cond_6

    const/4 v0, 0x0

    return v0

    .line 243
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const/4 v9, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-wide/from16 v7, p8

    move-object v15, v10

    move-wide/from16 v10, v16

    move/from16 v12, p10

    .line 244
    invoke-direct/range {v0 .. v12}, Lcom/coloros/settings/feature/password/a;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJZJI)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start_type"

    .line 246
    invoke-virtual {v15, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "customize_head"

    .line 247
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4194
    iput-object v2, v13, Lcom/coloros/settings/feature/password/a;->d:Ljava/lang/String;

    const-string v3, "customize_head_str"

    .line 250
    invoke-virtual {v15, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "customize_head_str_pattern"

    .line 252
    invoke-virtual {v15, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "customize_head_str_password"

    .line 254
    invoke-virtual {v15, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "customize_cancel_title"

    .line 255
    invoke-virtual {v15, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x10000

    if-ne v14, v9, :cond_7

    .line 257
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_4

    .line 261
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object v5, v6

    goto :goto_4

    :cond_8
    move-object v5, v4

    .line 4198
    :goto_4
    iput-object v5, v13, Lcom/coloros/settings/feature/password/a;->g:Ljava/lang/String;

    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 269
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_9
    const/4 v1, 0x1

    if-eqz p6, :cond_b

    const/high16 v2, 0x2000000

    .line 273
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_a

    .line 275
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coloros/settings/feature/password/a;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 276
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 278
    :cond_a
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coloros/settings/feature/password/a;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 279
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 282
    :cond_b
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_c

    .line 283
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->c:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    .line 285
    :cond_c
    iget-object v2, v13, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_5
    return v1
.end method

.method public final a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 12

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/feature/password/a;->b:Landroid/app/Activity;

    .line 204
    invoke-static {v0}, Lcom/android/settings/m;->f(Landroid/content/Context;)I

    move-result v11

    const/16 v2, 0x37

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    .line 203
    invoke-virtual/range {v1 .. v11}, Lcom/coloros/settings/feature/password/a;->a(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result p1

    return p1
.end method
