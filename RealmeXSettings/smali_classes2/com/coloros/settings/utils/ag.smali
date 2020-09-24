.class public final Lcom/coloros/settings/utils/ag;
.super Ljava/lang/Object;
.source "OppoLockScreenUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/utils/ag$a;
    }
.end annotation


# static fields
.field public static final a:[J

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x4

    .line 66
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/utils/ag;->a:[J

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    .line 95
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v1, 0x10000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v3, 0x20000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f120fac

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v5, 0x30000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const v5, 0x30001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v7, 0x7f120fd4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const v6, 0x30002

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const v9, 0x7f120fad

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v8, 0x40000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f120fd3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v10, 0x50000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    const/high16 v10, 0x60000

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x32
        0x4b
        0x32
    .end array-data
.end method

.method public static a(Landroid/content/ContentResolver;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PASSWORD_LENGTH"

    .line 454
    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 456
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getNumericPasswordLength for use "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fail !"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OppoLockScreenUtil"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Intent;II)I
    .locals 1

    if-nez p0, :cond_0

    return p1

    :cond_0
    const-string v0, "start_type"

    .line 296
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 297
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return p1

    :cond_1
    const-string v0, "data"

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    sget v0, Lcom/coloros/settings/utils/ag$a;->d:I

    if-ne p2, v0, :cond_2

    const p0, 0x7f120507

    return p0

    .line 303
    :cond_2
    sget v0, Lcom/coloros/settings/utils/ag$a;->b:I

    if-ne p2, v0, :cond_3

    const p0, 0x7f120506

    return p0

    :cond_3
    const-string v0, "secure"

    .line 307
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 308
    sget v0, Lcom/coloros/settings/utils/ag$a;->d:I

    if-ne p2, v0, :cond_4

    const p0, 0x7f120ce3

    return p0

    .line 310
    :cond_4
    sget v0, Lcom/coloros/settings/utils/ag$a;->b:I

    if-ne p2, v0, :cond_5

    const p0, 0x7f120cc1

    return p0

    :cond_5
    const-string v0, "change"

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 315
    sget p0, Lcom/coloros/settings/utils/ag$a;->d:I

    if-ne p2, p0, :cond_6

    const p0, 0x7f120cda

    return p0

    .line 317
    :cond_6
    sget p0, Lcom/coloros/settings/utils/ag$a;->b:I

    if-ne p2, p0, :cond_7

    const p0, 0x7f120caf

    return p0

    .line 319
    :cond_7
    sget p0, Lcom/coloros/settings/utils/ag$a;->c:I

    if-ne p2, p0, :cond_8

    const p0, 0x7f120cd9

    return p0

    .line 321
    :cond_8
    sget p0, Lcom/coloros/settings/utils/ag$a;->a:I

    if-ne p2, p0, :cond_9

    const p0, 0x7f120cae

    return p0

    :cond_9
    return p1
.end method

.method public static a(Landroid/app/Activity;II[BZILjava/lang/String;ZLcom/coloros/settings/feature/password/c;)Landroid/app/Dialog;
    .locals 14

    move-object v1, p0

    .line 477
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 478
    sget-object v0, Lcom/coloros/settings/utils/ag;->c:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    sget-object v3, Lcom/coloros/settings/utils/ag;->b:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 481
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/high16 v0, 0x30000

    move/from16 v4, p2

    if-lt v4, v0, :cond_0

    const v0, 0x7f120fd2

    .line 2518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 484
    new-array v11, v0, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 486
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 490
    :cond_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f130215

    invoke-direct {v0, p0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x1

    .line 491
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f120491

    const/4 v5, 0x0

    .line 492
    invoke-virtual {v0, v3, v5}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/coloros/settings/utils/ag$3;

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v3, p8

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/coloros/settings/utils/ag$3;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/coloros/settings/feature/password/c;I[BZILjava/lang/String;Landroid/content/Intent;Z)V

    .line 493
    invoke-virtual {v12, v11, v13}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(II[BZILjava/lang/String;Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 5

    .line 369
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "other_lock"

    const/4 v2, 0x1

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "lockscreen.password_type"

    .line 371
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "password"

    .line 372
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p2, "android.app.extra.PASSWORD_COMPLEXITY"

    .line 373
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "change_title_for_fingerprint"

    .line 374
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "change_head_type"

    .line 375
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string p2, "confirm_credentials"

    .line 376
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "start_type"

    .line 378
    invoke-virtual {v0, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "android.intent.extra.USER_ID"

    invoke-virtual {p6, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 381
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "has_challenge"

    .line 383
    invoke-virtual {p6, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    const-wide/16 p4, 0x0

    const-string v1, "challenge"

    .line 384
    invoke-virtual {p6, v1, p4, p5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 385
    invoke-virtual {p6, p0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 386
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p2, "from_lock_screen"

    .line 388
    invoke-virtual {p6, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "from_fingerprint_reset"

    .line 389
    invoke-virtual {p6, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 391
    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_1
    const-string p0, "has_face_challenge"

    .line 394
    invoke-virtual {p6, p0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "face_challenge"

    .line 395
    invoke-virtual {p6, p2, p4, p5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p3

    .line 396
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 397
    invoke-virtual {v0, p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p0, "change_title_for_face"

    .line 398
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p0, 0x2000000

    .line 400
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/content/Intent;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5

    const v0, 0x7f120c9a

    .line 233
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p0, :cond_4

    const-string v2, "start_type"

    .line 235
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "data"

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "com.android.settings.ConfirmCredentials.title"

    .line 239
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    move-object v1, p0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    .line 2253
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2256
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "change"

    .line 2257
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f120f77

    goto :goto_0

    :cond_2
    const-string v1, "open"

    .line 2259
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "close"

    .line 2261
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const v0, 0x7f120f78

    .line 244
    :cond_3
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static a(Landroid/content/Intent;Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const-string v0, "start_type"

    .line 270
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "language"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    sget v0, Lcom/coloros/settings/utils/ag$a;->d:I

    const-string v1, "\n"

    const v2, 0x7f121657

    if-ne p3, v0, :cond_0

    .line 274
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f120865

    .line 275
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 276
    :cond_0
    sget v0, Lcom/coloros/settings/utils/ag$a;->b:I

    if-ne p3, v0, :cond_2

    .line 277
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f120b23

    .line 278
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v1, "customize_head"

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "customize_head_str"

    .line 281
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 288
    :cond_2
    invoke-static {p0, p2, p3}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Intent;II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 721
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 723
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 724
    aget-byte v2, p0, v1

    add-int/lit8 v2, v2, -0x31

    int-to-byte v2, v2

    .line 725
    div-int/lit8 v3, v2, 0x3

    rem-int/lit8 v2, v2, 0x3

    invoke-static {v3, v2}, Lcom/color/support/widget/ColorLockPatternView$Cell;->of(II)Lcom/color/support/widget/ColorLockPatternView$Cell;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .line 55
    sget-object v0, Lcom/coloros/settings/utils/ag;->d:Ljava/util/Map;

    return-object v0
.end method

.method public static varargs a(FZZZI[Landroid/view/View;)V
    .locals 8

    if-eqz p5, :cond_d

    .line 632
    array-length v0, p5

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 636
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_5

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    move v2, p0

    goto :goto_1

    :cond_2
    neg-float v2, p0

    goto :goto_1

    :cond_3
    move v2, v0

    :goto_1
    if-nez p2, :cond_4

    :goto_2
    move p0, v0

    goto :goto_5

    :cond_4
    if-nez p1, :cond_9

    :goto_3
    neg-float p0, p0

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    move v2, p0

    goto :goto_4

    :cond_6
    neg-float v2, p0

    goto :goto_4

    :cond_7
    move v2, v0

    :goto_4
    if-eqz p2, :cond_8

    goto :goto_2

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_3

    .line 647
    :cond_9
    :goto_5
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e99999a    # 0.3f

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 648
    array-length p2, p5

    move v3, v1

    :goto_6
    if-ge v3, p2, :cond_d

    aget-object v4, p5, v3

    .line 649
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v5, v2, p0, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v6, 0x1f4

    .line 650
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 651
    invoke-virtual {v5, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz v4, :cond_c

    .line 653
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p3, :cond_a

    if-ltz p4, :cond_b

    .line 656
    :cond_a
    new-instance v6, Lcom/coloros/settings/utils/ag$6;

    invoke-direct {v6, p4, v4}, Lcom/coloros/settings/utils/ag$6;-><init>(ILandroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 678
    :cond_b
    invoke-virtual {v4, v5}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 679
    invoke-virtual {v5}, Landroid/view/animation/TranslateAnimation;->start()V

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    :goto_7
    return-void
.end method

.method public static varargs a(FZZZ[Landroid/view/View;)V
    .locals 6

    const/4 v4, -0x1

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 627
    invoke-static/range {v0 .. v5}, Lcom/coloros/settings/utils/ag;->a(FZZZI[Landroid/view/View;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    if-eqz p0, :cond_2

    const v0, 0x7f010069

    const v1, 0x7f010073

    if-nez p1, :cond_0

    .line 349
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    :cond_0
    const-string v2, "start_type"

    .line 354
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "change"

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 358
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void

    .line 360
    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_2
    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 686
    instance-of v0, p0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 687
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {v0, p1, v1}, Lcom/coloros/settings/utils/al;->a(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Z)V

    .line 688
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    const v0, 0x7f0a070a

    .line 690
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/Toolbar;

    .line 691
    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 692
    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 693
    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    const/4 p1, 0x0

    .line 694
    invoke-static {p0, p1, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/coloros/settings/feature/password/c;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 523
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f121416

    .line 527
    invoke-virtual {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120f84

    new-instance v1, Lcom/coloros/settings/utils/ag$4;

    invoke-direct {v1, p1}, Lcom/coloros/settings/utils/ag$4;-><init>(Lcom/coloros/settings/feature/password/c;)V

    .line 528
    invoke-virtual {p0, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 538
    invoke-static {p0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Z)V
    .locals 3

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from_lock_screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g;[B)V
    .locals 4

    const-string v0, "PrivacyPasswordController"

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "screen_lock_bind_email"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 185
    new-instance p0, Lcom/coloros/settings/utils/ag$1;

    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/ag$1;-><init>(Lcom/coloros/settings/privacy/a/g;)V

    if-eqz p2, :cond_1

    .line 1396
    iget v2, p1, Lcom/coloros/settings/privacy/a/g;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1400
    new-instance v2, Lcom/coloros/settings/privacy/a/d;

    sget-object v3, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v2, v3}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 1401
    sget-object v3, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget p1, p1, Lcom/coloros/settings/privacy/a/g;->a:I

    invoke-virtual {v2, v3, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1402
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    const/16 v3, 0x8

    invoke-virtual {v2, p1, v3}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1403
    sget-object p1, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v2, p1, p2}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 1404
    invoke-virtual {v2}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 1406
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 1407
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 1408
    sget-object p2, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, p2}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1409
    sget-object p2, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 2234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 1411
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "checkToken succeed"

    .line 1412
    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1414
    invoke-interface {p0, p2, p1}, Lcom/coloros/settings/privacy/a/g$c;->a(Z[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1420
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "checkToken e = "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "checkToken fail"

    .line 1422
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1424
    invoke-interface {p0, v1, p1}, Lcom/coloros/settings/privacy/a/g$c;->a(Z[B)V

    goto :goto_0

    .line 1397
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "checkToken Illegal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "confirm_title"

    .line 421
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 424
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "title"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 425
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sub"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 426
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private static varargs a(Landroid/content/Context;ZZ[Landroid/view/View;)V
    .locals 16

    move-object/from16 v0, p3

    if-eqz v0, :cond_b

    .line 562
    array-length v1, v0

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 565
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 568
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    neg-int v1, v1

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    int-to-float v5, v1

    goto :goto_1

    :cond_3
    move v5, v2

    :goto_1
    if-eqz p1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    neg-int v1, v1

    int-to-float v1, v1

    .line 576
    :goto_2
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v2, v8, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    if-eqz p1, :cond_5

    move v7, v2

    goto :goto_3

    :cond_5
    move v7, v9

    :goto_3
    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v9, v2

    .line 579
    :goto_4
    array-length v8, v0

    move v10, v3

    :goto_5
    if-ge v10, v8, :cond_b

    aget-object v11, v0, v10

    if-eqz v11, :cond_a

    .line 581
    invoke-virtual {v11, v3}, Landroid/view/View;->setVisibility(I)V

    .line 582
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-direct {v12, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 583
    invoke-virtual {v12, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    if-eqz p2, :cond_7

    .line 585
    new-instance v13, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v13, v5, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 v14, 0x19d

    .line 586
    invoke-virtual {v13, v14, v15}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 587
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 590
    :cond_7
    new-instance v13, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v13, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_8

    const-wide/16 v14, 0x85

    goto :goto_6

    :cond_8
    const-wide/16 v14, 0x0

    .line 591
    :goto_6
    invoke-virtual {v13, v14, v15}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v14, 0x118

    .line 592
    invoke-virtual {v13, v14, v15}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    if-nez p1, :cond_9

    .line 594
    new-instance v14, Lcom/coloros/settings/utils/ag$5;

    invoke-direct {v14, v11}, Lcom/coloros/settings/utils/ag$5;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v14}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 619
    :cond_9
    invoke-virtual {v12, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 620
    invoke-virtual {v11, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_b
    :goto_7
    return-void
.end method

.method public static varargs a(Landroid/content/Context;Z[Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 553
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;ZZ[Landroid/view/View;)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/high16 v0, 0x20000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x30000

    if-eq p0, v0, :cond_1

    const v0, 0x30001

    if-eq p0, v0, :cond_1

    const v0, 0x30002

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_lock_screen"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x280000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/coloros/settings/privacy/a/g$d;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_lock_bind_email"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 738
    new-array p0, v0, [B

    return-object p0

    .line 740
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 742
    new-array v2, v1, [B

    :goto_0
    if-ge v0, v1, :cond_1

    .line 744
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/color/support/widget/ColorLockPatternView$Cell;

    .line 745
    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v3}, Lcom/color/support/widget/ColorLockPatternView$Cell;->getColumn()I

    move-result v3

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x31

    int-to-byte v3, v4

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static b(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorLockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 757
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->a(Ljava/util/List;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 406
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 409
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/coloros/settings/utils/ag$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/utils/ag$2;-><init>(Landroid/app/Activity;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static varargs b(Landroid/content/Context;Z[Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 557
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;ZZ[Landroid/view/View;)V

    return-void
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_fingerprint_reset"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f1209de

    .line 143
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f010073

    const v1, 0x7f010069

    .line 331
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static d(Landroid/app/Activity;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const v0, 0x7f010067

    const v1, 0x7f010068

    .line 340
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public static e(Landroid/app/Activity;)F
    .locals 1

    if-nez p0, :cond_0

    const/high16 p0, 0x44870000    # 1080.0f

    return p0

    .line 547
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 548
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 549
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method
