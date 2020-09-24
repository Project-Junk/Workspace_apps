.class public final Lcom/android/settingslib/notification/a;
.super Ljava/lang/Object;
.source "EnableZenModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/notification/a$a;
    }
.end annotation


# static fields
.field private static final g:Z

.field private static final h:[I

.field private static final i:I

.field private static final j:I

.field private static final k:I


# instance fields
.field protected a:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected b:Landroid/app/NotificationManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected c:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected d:Landroid/widget/TextView;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected e:Landroid/widget/LinearLayout;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected f:Landroid/view/LayoutInflater;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private l:I

.field private m:Landroid/app/AlarmManager;

.field private n:I

.field private o:Z

.field private p:Landroid/widget/RadioGroup;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "EnableZenModeDialog"

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settingslib/notification/a;->g:Z

    .line 61
    sget-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 62
    sput-object v0, Lcom/android/settingslib/notification/a;->h:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lcom/android/settingslib/notification/a;->i:I

    .line 63
    sget-object v0, Lcom/android/settingslib/notification/a;->h:[I

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    sput v1, Lcom/android/settingslib/notification/a;->j:I

    const/16 v1, 0x3c

    .line 64
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    sput v0, Lcom/android/settingslib/notification/a;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/android/settingslib/notification/a;->l:I

    const/4 v0, 0x3

    .line 94
    iput v0, p0, Lcom/android/settingslib/notification/a;->q:I

    .line 100
    iput-object p1, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/notification/a;)Landroid/widget/RadioGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_forever"

    .line 287
    invoke-static {p0, v0}, Lcom/android/settingslib/m/a/a;->h(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/service/notification/Condition;Landroid/view/View;I)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_5

    .line 190
    iget v0, p1, Landroid/service/notification/Condition;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v7, v2

    goto :goto_0

    :cond_0
    move v7, v1

    .line 191
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/notification/a$a;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/settingslib/notification/a$a;

    invoke-direct {v0}, Lcom/android/settingslib/notification/a$a;-><init>()V

    :goto_1
    move-object v4, v0

    .line 193
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    iget-object v0, v4, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    .line 195
    :goto_2
    iget-object v0, v4, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p3}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v4, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    .line 198
    :cond_3
    iput-object p1, v4, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    .line 199
    iget-object v0, v4, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    invoke-static {v0}, Lcom/android/settingslib/notification/a;->c(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v9

    .line 200
    sget-boolean v0, Lcom/android/settingslib/notification/a;->g:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "bind i="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " first="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " condition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EnableZenModeDialog"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_4
    iget-object v0, v4, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 203
    iget-object v0, v4, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    new-instance v2, Lcom/android/settingslib/notification/a$2;

    invoke-direct {v2, p0, v4, v9}, Lcom/android/settingslib/notification/a$2;-><init>(Lcom/android/settingslib/notification/a;Lcom/android/settingslib/notification/a$a;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    move-object v3, p0

    move-object v5, p2

    move-object v6, p1

    move v8, p3

    .line 216
    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/notification/a;->a(Lcom/android/settingslib/notification/a$a;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V

    .line 217
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 188
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "condition must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/android/settingslib/notification/a$a;Landroid/view/View;Landroid/service/notification/Condition;ZILandroid/net/Uri;)V
    .locals 6

    .line 330
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const v0, 0x1020002

    .line 331
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    .line 332
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityLiveRegion(I)V

    .line 334
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const v0, 0x1020014

    .line 335
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/a$a;->c:Landroid/widget/TextView;

    .line 338
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->d:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const v0, 0x1020015

    .line 339
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settingslib/notification/a$a;->d:Landroid/widget/TextView;

    .line 342
    :cond_2
    iget-object v0, p3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p3, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    .line 344
    :goto_0
    iget-object v2, p3, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    .line 345
    iget-object v3, p1, Lcom/android/settingslib/notification/a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 347
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 349
    :cond_4
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_1
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    invoke-virtual {v0, p4}, Landroid/view/View;->setEnabled(Z)V

    .line 353
    iget-object v0, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p4, :cond_5

    move p4, v2

    goto :goto_2

    :cond_5
    const p4, 0x3ecccccd    # 0.4f

    :goto_2
    invoke-virtual {v0, p4}, Landroid/view/View;->setAlpha(F)V

    .line 355
    iget-object p4, p1, Lcom/android/settingslib/notification/a$a;->b:Landroid/view/View;

    new-instance v0, Lcom/android/settingslib/notification/a$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/notification/a$3;-><init>(Lcom/android/settingslib/notification/a;Lcom/android/settingslib/notification/a$a;)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p4, 0x1020019

    .line 363
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    .line 364
    new-instance v0, Lcom/android/settingslib/notification/a$4;

    invoke-direct {v0, p0, p2, p1, p5}, Lcom/android/settingslib/notification/a$4;-><init>(Lcom/android/settingslib/notification/a;Landroid/view/View;Lcom/android/settingslib/notification/a$a;I)V

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x102001a

    .line 372
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 373
    new-instance v5, Lcom/android/settingslib/notification/a$5;

    invoke-direct {v5, p0, p2, p1, p5}, Lcom/android/settingslib/notification/a$5;-><init>(Lcom/android/settingslib/notification/a;Landroid/view/View;Lcom/android/settingslib/notification/a$a;I)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-static {p6}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide p1

    if-ne p5, v1, :cond_c

    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_c

    .line 382
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 383
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 384
    iget p5, p0, Lcom/android/settingslib/notification/a;->l:I

    if-ltz p5, :cond_8

    if-lez p5, :cond_6

    move p1, v1

    goto :goto_3

    :cond_6
    move p1, v4

    .line 385
    :goto_3
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 386
    iget p1, p0, Lcom/android/settingslib/notification/a;->l:I

    sget-object p2, Lcom/android/settingslib/notification/a;->h:[I

    array-length p2, p2

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_7

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_5

    .line 388
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    sub-long/2addr p1, p5

    .line 389
    sget p5, Lcom/android/settingslib/notification/a;->i:I

    const p6, 0xea60

    mul-int/2addr p5, p6

    int-to-long p5, p5

    cmp-long p1, p1, p5

    if-lez p1, :cond_9

    move v4, v1

    :cond_9
    invoke-virtual {p4, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 390
    iget-object p1, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    sget p2, Lcom/android/settingslib/notification/a;->j:I

    .line 391
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p5

    .line 390
    invoke-static {p1, p2, p5}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object p1

    .line 392
    iget-object p2, p3, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    iget-object p1, p1, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 395
    :goto_5
    invoke-virtual {p4}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_6

    :cond_a
    move p1, p2

    :goto_6
    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 396
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    move p2, v2

    :cond_b
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    .line 398
    :cond_c
    invoke-virtual {p4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 399
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/android/settingslib/notification/a;Landroid/view/View;Lcom/android/settingslib/notification/a$a;ZI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 2421
    iget-object v3, v0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    const/16 v4, 0xa3

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 2423
    sget-object v3, Lcom/android/settingslib/notification/a;->h:[I

    array-length v3, v3

    .line 2424
    iget v4, v0, Lcom/android/settingslib/notification/a;->l:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v4, v6, :cond_5

    .line 2426
    iget-object v4, v1, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    invoke-static {v4}, Lcom/android/settingslib/notification/a;->c(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object v4

    .line 2427
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    .line 2428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :goto_0
    if-ge v5, v3, :cond_4

    if-eqz v2, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v3, -0x1

    sub-int/2addr v4, v5

    .line 2431
    :goto_1
    sget-object v6, Lcom/android/settingslib/notification/a;->h:[I

    aget v15, v6, v4

    const v6, 0xea60

    mul-int/2addr v6, v15

    int-to-long v12, v6

    add-long v13, v10, v12

    if-eqz v2, :cond_1

    cmp-long v6, v13, v8

    if-gtz v6, :cond_2

    :cond_1
    if-nez v2, :cond_3

    cmp-long v6, v13, v8

    if-gez v6, :cond_3

    .line 2434
    :cond_2
    iput v4, v0, Lcom/android/settingslib/notification/a;->l:I

    .line 2435
    iget-object v12, v0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    .line 2436
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v16

    const/16 v17, 0x0

    .line 2435
    invoke-static/range {v12 .. v17}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;JIIZ)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_7

    .line 2442
    sget v2, Lcom/android/settingslib/notification/a;->k:I

    iput v2, v0, Lcom/android/settingslib/notification/a;->l:I

    .line 2443
    iget-object v2, v0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/notification/a;->h:[I

    iget v4, v0, Lcom/android/settingslib/notification/a;->l:I

    aget v3, v3, v4

    .line 2444
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2443
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    goto :goto_3

    :cond_5
    sub-int/2addr v3, v7

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    add-int/2addr v4, v6

    .line 2448
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Lcom/android/settingslib/notification/a;->l:I

    .line 2449
    iget-object v2, v0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    sget-object v3, Lcom/android/settingslib/notification/a;->h:[I

    iget v4, v0, Lcom/android/settingslib/notification/a;->l:I

    aget v3, v3, v4

    .line 2450
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2449
    invoke-static {v2, v3, v4}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v2

    :cond_7
    :goto_3
    move/from16 v3, p4

    move-object v4, v2

    move-object/from16 v2, p1

    .line 2452
    invoke-direct {v0, v4, v2, v3}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 2453
    iget-object v2, v1, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    invoke-direct {v0, v2}, Lcom/android/settingslib/notification/a;->f(Landroid/service/notification/Condition;)V

    .line 2454
    iget-object v0, v1, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private static a(Ljava/util/Calendar;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 291
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 292
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 293
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 294
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected static a(Landroid/service/notification/Condition;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    .line 270
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownToAlarmConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/android/settingslib/notification/a;Landroid/service/notification/Condition;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/a;->d(Landroid/service/notification/Condition;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/android/settingslib/notification/a;Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    .line 2283
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/a;->d(Landroid/service/notification/Condition;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/notification/a;->c(Landroid/service/notification/Condition;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 57
    sget-boolean v0, Lcom/android/settingslib/notification/a;->g:Z

    return v0
.end method

.method protected static b(Landroid/service/notification/Condition;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_0

    .line 275
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static c(Landroid/service/notification/Condition;)Landroid/net/Uri;
    .locals 0

    if-eqz p0, :cond_0

    .line 254
    iget-object p0, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settingslib/notification/a;Landroid/service/notification/Condition;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/a;->f(Landroid/service/notification/Condition;)V

    return-void
.end method

.method private d()Landroid/view/View;
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->f:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/a;->f:Landroid/view/LayoutInflater;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settingslib/e$g;->zen_mode_turn_on_dialog_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 164
    sget v1, Lcom/android/settingslib/e$f;->container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 166
    sget v2, Lcom/android/settingslib/e$f;->zen_radio_buttons:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    .line 167
    sget v2, Lcom/android/settingslib/e$f;->zen_radio_buttons_content:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    .line 168
    sget v2, Lcom/android/settingslib/e$f;->zen_alarm_warning:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settingslib/notification/a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    move v2, v1

    .line 170
    :goto_0
    iget v3, p0, Lcom/android/settingslib/notification/a;->q:I

    if-ge v2, v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/android/settingslib/notification/a;->f:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/e$g;->zen_mode_radio_button:I

    iget-object v5, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 173
    iget-object v4, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 176
    iget-object v3, p0, Lcom/android/settingslib/notification/a;->f:Landroid/view/LayoutInflater;

    sget v4, Lcom/android/settingslib/e$g;->zen_mode_condition:I

    iget-object v5, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 178
    iget v4, p0, Lcom/android/settingslib/notification/a;->q:I

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 179
    iget-object v4, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->c()V

    return-object v0
.end method

.method private d(Landroid/service/notification/Condition;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->a:Landroid/net/Uri;

    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e()Landroid/service/notification/Condition;
    .locals 9

    .line 258
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 259
    new-instance v0, Landroid/service/notification/Condition;

    iget-object v1, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/notification/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private e(Landroid/service/notification/Condition;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/notification/a$a;

    if-eqz p1, :cond_1

    .line 408
    iget-boolean v3, p0, Lcom/android/settingslib/notification/a;->o:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    if-nez v2, :cond_1

    .line 409
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 413
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/a$a;

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 414
    iget-object p1, p1, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v2

    .line 415
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/notification/a;->p:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x8

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 417
    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private f()J
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->m:Landroid/app/AlarmManager;

    iget v1, p0, Lcom/android/settingslib/notification/a;->n:I

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private f(Landroid/service/notification/Condition;)V
    .locals 10

    .line 1465
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->b:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto/16 :goto_6

    .line 1473
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1474
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->f()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    if-eqz p1, :cond_5

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/settingslib/notification/a;->d(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1482
    :cond_3
    iget-object p1, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v8

    cmp-long p1, v8, v4

    if-lez p1, :cond_4

    cmp-long p1, v6, v8

    if-gez p1, :cond_4

    .line 1484
    sget p1, Lcom/android/settingslib/e$h;->zen_alarm_warning:I

    goto :goto_2

    :cond_4
    move p1, v2

    goto :goto_2

    .line 1480
    :cond_5
    :goto_1
    sget p1, Lcom/android/settingslib/e$h;->zen_alarm_warning_indef:I

    :goto_2
    if-nez p1, :cond_6

    goto :goto_6

    .line 1491
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    sub-long v4, v6, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v4, v4, v8

    if-gez v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v2

    .line 1497
    :goto_3
    iget-object v5, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-static {v5, v8}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v4, :cond_9

    if-eqz v5, :cond_8

    const-string v5, "Hm"

    goto :goto_4

    :cond_8
    const-string v5, "hma"

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_a

    const-string v5, "EEEHm"

    goto :goto_4

    :cond_a
    const-string v5, "EEEhma"

    .line 1499
    :goto_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1500
    invoke-static {v5, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v4, :cond_b

    .line 1501
    sget v4, Lcom/android/settingslib/e$h;->alarm_template:I

    goto :goto_5

    :cond_b
    sget v4, Lcom/android/settingslib/e$h;->alarm_template_far:I

    .line 1502
    :goto_5
    iget-object v6, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {v6, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1491
    invoke-virtual {v0, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 459
    :goto_6
    iget-object p1, p0, Lcom/android/settingslib/notification/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object p1, p0, Lcom/android/settingslib/notification/a;->d:Landroid/widget/TextView;

    if-nez v3, :cond_c

    const/16 v2, 0x8

    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private g()Landroid/service/notification/Condition;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 300
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 301
    invoke-static {v0}, Lcom/android/settingslib/notification/a;->a(Ljava/util/Calendar;)V

    const/4 v1, 0x5

    const/4 v2, 0x6

    .line 302
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 303
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 305
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 306
    invoke-virtual {v3, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 307
    invoke-static {v3}, Lcom/android/settingslib/notification/a;->a(Ljava/util/Calendar;)V

    .line 309
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    .line 311
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 310
    invoke-static {v0, v1, v2, v3}, Landroid/service/notification/ZenModeConfig;->toNextAlarmCondition(Landroid/content/Context;JI)Landroid/service/notification/Condition;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private h()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    sget v0, Lcom/android/settingslib/notification/a;->k:I

    iput v0, p0, Lcom/android/settingslib/notification/a;->l:I

    .line 320
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    sget-object v1, Lcom/android/settingslib/notification/a;->h:[I

    iget v2, p0, Lcom/android/settingslib/notification/a;->l:I

    aget v1, v1, v2

    .line 321
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 320
    invoke-static {v0, v1, v2}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(Landroid/content/Context;II)Landroid/service/notification/Condition;

    move-result-object v0

    .line 322
    iget-boolean v1, p0, Lcom/android/settingslib/notification/a;->o:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settingslib/notification/a;->a(I)Lcom/android/settingslib/notification/a$a;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settingslib/notification/a$a;->e:Landroid/service/notification/Condition;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 6

    .line 104
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    const-string v1, "notification"

    .line 105
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/a;->b:Landroid/app/NotificationManager;

    .line 106
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/service/notification/Condition;->newId(Landroid/content/Context;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "forever"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/notification/a;->a:Landroid/net/Uri;

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/settingslib/notification/a;->m:Landroid/app/AlarmManager;

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/notification/a;->n:I

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/settingslib/notification/a;->o:Z

    .line 111
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settingslib/notification/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settingslib/e$h;->zen_mode_settings_turn_on_dialog_title:I

    .line 112
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/e$h;->cancel:I

    const/4 v3, 0x0

    .line 113
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settingslib/e$h;->zen_mode_enable_dialog_turn_on:I

    new-instance v3, Lcom/android/settingslib/notification/a$1;

    invoke-direct {v3, p0}, Lcom/android/settingslib/notification/a$1;-><init>(Lcom/android/settingslib/notification/a;)V

    .line 114
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 143
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->d()Landroid/view/View;

    move-result-object v2

    .line 144
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->e()Landroid/service/notification/Condition;

    move-result-object v3

    .line 1228
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->e()Landroid/service/notification/Condition;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v4, v5, v0}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 1233
    invoke-direct {p0, v3}, Lcom/android/settingslib/notification/a;->d(Landroid/service/notification/Condition;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 1234
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/a;->a(I)Lcom/android/settingslib/notification/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1235
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->h()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->g()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/notification/a;->e(Landroid/service/notification/Condition;)V

    goto :goto_0

    .line 1238
    :cond_0
    invoke-static {v3}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->h()V

    .line 1240
    invoke-direct {p0, v3}, Lcom/android/settingslib/notification/a;->e(Landroid/service/notification/Condition;)V

    const/4 v0, 0x2

    .line 1241
    invoke-virtual {p0, v0}, Lcom/android/settingslib/notification/a;->a(I)Lcom/android/settingslib/notification/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1242
    :cond_1
    invoke-static {v3}, Lcom/android/settingslib/notification/a;->b(Landroid/service/notification/Condition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1243
    invoke-direct {p0}, Lcom/android/settingslib/notification/a;->g()Landroid/service/notification/Condition;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/notification/a;->e(Landroid/service/notification/Condition;)V

    .line 1244
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3, v0, v5}, Lcom/android/settingslib/notification/a;->a(Landroid/service/notification/Condition;Landroid/view/View;I)V

    .line 1246
    invoke-virtual {p0, v5}, Lcom/android/settingslib/notification/a;->a(I)Lcom/android/settingslib/notification/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/notification/a$a;->a:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1248
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Invalid manual condition: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "EnableZenModeDialog"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 146
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected final a(I)Lcom/android/settingslib/notification/a$a;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/notification/a;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/notification/a$a;

    return-object p1
.end method
