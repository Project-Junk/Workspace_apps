.class public Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;
.super Landroidx/preference/Preference;
.source "MessageEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;
    }
.end annotation


# instance fields
.field a:Z

.field private b:Landroid/animation/LayoutTransition;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroidx/recyclerview/widget/ColorRecyclerView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

.field private i:Z

.field private j:Landroid/app/Activity;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/AnimatorListenerAdapter;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    .line 108
    iput-object p2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->j:Landroid/app/Activity;

    const/16 p1, -0x64

    .line 109
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->setOrder(I)V

    .line 110
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    .line 103
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a()V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a()V
    .locals 1

    const v0, 0x7f0d01be

    .line 114
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->setLayoutResource(I)V

    const-string v0, "color_message_preference"

    .line 115
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    .line 138
    iget-boolean v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->m:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    iget-object v4, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    .line 1255
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    .line 1256
    new-array v7, v6, [F

    fill-array-data v7, :array_0

    const-string v8, "rotation"

    invoke-static {v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1257
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v8, 0x3dcccccd    # 0.1f

    const v9, 0x3e99999a    # 0.3f

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v7, v9, v11, v8, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v12, 0xa4

    .line 1258
    invoke-virtual {v1, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1259
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 1263
    new-array v7, v6, [F

    fill-array-data v7, :array_1

    const-string v12, "alpha"

    invoke-static {v3, v12, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v13, 0x64

    .line 1264
    invoke-virtual {v3, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1265
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v13, 0x3ecccccd    # 0.4f

    const v14, 0x3e4ccccd    # 0.2f

    invoke-direct {v7, v13, v11, v14, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v13, 0x46

    int-to-long v8, v1

    mul-long/2addr v8, v13

    .line 1266
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1267
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x28

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    .line 1271
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1272
    new-array v14, v6, [F

    fill-array-data v14, :array_2

    invoke-static {v13, v12, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v2, 0xbe

    .line 1273
    invoke-virtual {v14, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1274
    new-instance v7, Landroid/view/animation/PathInterpolator;

    const v15, 0x3ea8f5c3    # 0.33f

    invoke-direct {v7, v11, v11, v15, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v14, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1275
    invoke-virtual {v14, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1276
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    new-array v7, v6, [I

    .line 1279
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f07041c

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const/4 v15, 0x0

    aput v14, v7, v15

    const/4 v14, 0x1

    aput v15, v7, v14

    .line 1278
    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 1281
    new-instance v14, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$rcfZZNWzow4iOWB220vgDSh1lis;

    invoke-direct {v14, v13}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$rcfZZNWzow4iOWB220vgDSh1lis;-><init>(Landroid/view/View;)V

    invoke-virtual {v7, v14}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1287
    invoke-virtual {v7, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1288
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const v13, 0x3e99999a    # 0.3f

    invoke-direct {v2, v13, v11, v3, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1289
    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1290
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v16, 0x3c

    add-long v8, v8, v16

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    goto :goto_0

    .line 1295
    :cond_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1296
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1297
    new-instance v2, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;

    invoke-direct {v2, v0, v4}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$1;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1314
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    return-void

    .line 143
    :cond_1
    iget-object v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    iget-object v3, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    invoke-direct {v0, v1, v2, v3}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 v1, 0x1

    .line 145
    iput-boolean v1, v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static synthetic a(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 341
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 343
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 16

    move-object/from16 v0, p3

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    .line 319
    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "rotation"

    move-object/from16 v5, p1

    invoke-static {v5, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 320
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3e99999a    # 0.3f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v9, 0xa4

    .line 321
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const-string v4, "alpha"

    move-object/from16 v9, p2

    invoke-static {v9, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v9, 0x64

    .line 325
    invoke-virtual {v3, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    new-instance v9, Landroid/view/animation/PathInterpolator;

    const v10, 0x3ecccccd    # 0.4f

    const v11, 0x3e4ccccd    # 0.2f

    invoke-direct {v9, v10, v8, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual/range {p3 .. p3}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    const/4 v9, 0x0

    const-wide/16 v10, 0x28

    move-wide v11, v10

    move v10, v9

    :goto_0
    if-ge v10, v3, :cond_0

    .line 331
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 332
    new-array v14, v2, [F

    fill-array-data v14, :array_2

    invoke-static {v13, v4, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    const-wide/16 v5, 0xbe

    .line 333
    invoke-virtual {v14, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 334
    new-instance v15, Landroid/view/animation/PathInterpolator;

    const v5, 0x3ea8f5c3    # 0.33f

    invoke-direct {v15, v8, v8, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v14, v15}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 335
    invoke-virtual {v14, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 336
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    new-array v5, v2, [I

    aput v9, v5, v9

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v14, 0x7f07041c

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v14, 0x1

    aput v6, v5, v14

    .line 338
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 340
    new-instance v6, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$nNqUHK_8euuheecsdmXoL8oD8Jc;

    invoke-direct {v6, v13}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$nNqUHK_8euuheecsdmXoL8oD8Jc;-><init>(Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v13, 0xbe

    .line 346
    invoke-virtual {v5, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v13, 0x3dcccccd    # 0.1f

    const v14, 0x3e99999a    # 0.3f

    invoke-direct {v6, v14, v8, v13, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    invoke-virtual {v5, v11, v12}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 349
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, 0x3c

    add-long/2addr v11, v5

    add-int/lit8 v10, v10, 0x1

    move v5, v13

    move v6, v14

    goto :goto_0

    .line 354
    :cond_0
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 355
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 356
    new-instance v1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$2;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$2;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 373
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic a(Ljava/util/List;Landroid/view/View;)V
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/background/a/a;

    iget-object p1, p1, Lcom/coloros/settings/background/a/a;->e:Landroid/content/Intent;

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Landroid/animation/LayoutTransition;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b:Landroid/animation/LayoutTransition;

    return-object p0
.end method

.method private b()V
    .locals 10

    .line 154
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    :cond_1
    const/4 v1, 0x0

    .line 165
    instance-of v2, v0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 166
    move-object v1, v0

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 168
    :cond_2
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 171
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070422

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 175
    new-array v6, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Lcom/coloros/settings/utils/av;->a:Landroid/util/Property;

    new-array v8, v3, [I

    aput v5, v8, v5

    aput v2, v8, v4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-static {v1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x14d

    .line 176
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 178
    iget-object v6, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f07041d

    .line 183
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 185
    iget-object v6, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->g:Landroid/widget/RelativeLayout;

    new-array v7, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v8, Lcom/coloros/settings/utils/av;->a:Landroid/util/Property;

    new-array v9, v3, [I

    aput v5, v9, v5

    aput v2, v9, v4

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0xc8

    .line 186
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 187
    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v8, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->g:Landroid/widget/RelativeLayout;

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    sget-object v9, Lcom/coloros/settings/utils/av;->b:Landroid/util/FloatProperty;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v9, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-static {v8, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 190
    invoke-virtual {v3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x11

    .line 192
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 194
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 197
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->l:Landroid/animation/AnimatorListenerAdapter;

    if-nez v0, :cond_4

    .line 198
    new-instance v0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference$a;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroid/widget/RelativeLayout;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->l:Landroid/animation/AnimatorListenerAdapter;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->l:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static synthetic b(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 282
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 284
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 285
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;)V"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateMessageEntryLayout: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageEntryPreference"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x8

    if-eqz p1, :cond_7

    .line 389
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_4

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 395
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 396
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 397
    iput-boolean v3, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    .line 399
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v4, 0x7f0d01bf

    iget-object v5, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0a03e2

    .line 400
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 401
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/background/a/a;

    iget-object v5, v5, Lcom/coloros/settings/background/a/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v4, 0x7f0a03e5

    .line 402
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 405
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07040a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 407
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/background/a/a;

    iget-object v5, v5, Lcom/coloros/settings/background/a/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    new-instance v4, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$CV_5rhRWA_tepn32pAbHGsEiX8Y;

    invoke-direct {v4, p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$CV_5rhRWA_tepn32pAbHGsEiX8Y;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Ljava/util/List;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 410
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 411
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->h:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    invoke-virtual {p1, v2, v3}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a(Ljava/util/List;Z)V

    .line 415
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/ColorRecyclerView;->setVisibility(I)V

    .line 417
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 418
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 419
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 421
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070421

    .line 422
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v4, 0x7f07041f

    .line 423
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f07041e

    .line 424
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f070420

    .line 425
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_5

    .line 427
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 428
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/coloros/settings/background/a/a;

    iget-object v9, v9, Lcom/coloros/settings/background/a/a;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v7, :cond_4

    move v10, v5

    goto :goto_2

    :cond_4
    move v10, v0

    .line 430
    :goto_2
    invoke-virtual {v9, v10, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    .line 431
    iget-object v10, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->h:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    invoke-virtual {v0, p1, v2}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;->a(Ljava/util/List;Z)V

    .line 437
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "updateMessageEntryLayout: mShowAddAnim: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-boolean p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a:Z

    if-eqz p1, :cond_6

    .line 439
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b()V

    :cond_6
    return-void

    .line 390
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->n:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->m:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$CV_5rhRWA_tepn32pAbHGsEiX8Y(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$n5-06rceqwhoNHqtVxovdWssEas(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nNqUHK_8euuheecsdmXoL8oD8Jc(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->a(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$rcfZZNWzow4iOWB220vgDSh1lis(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/background/a/a;",
            ">;)V"
        }
    .end annotation

    .line 377
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    .line 378
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b(Ljava/util/List;)V

    .line 379
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->j:Landroid/app/Activity;

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b:Landroid/animation/LayoutTransition;

    .line 122
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClipToOutline(Z)V

    const v0, 0x7f0a03e3

    .line 124
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->d:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03e4

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ColorRecyclerView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    const v0, 0x7f0a03e1

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    const v0, 0x7f0a0433

    .line 127
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->g:Landroid/widget/RelativeLayout;

    .line 129
    new-instance p1, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->i:Z

    invoke-direct {p1, v0, v1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->h:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    .line 130
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setItemViewCacheSize(I)V

    .line 131
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 132
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->e:Landroidx/recyclerview/widget/ColorRecyclerView;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->h:Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ColorRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120aee

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->m:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120d8c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->n:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 137
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->f:Landroid/widget/ImageView;

    new-instance v0, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$n5-06rceqwhoNHqtVxovdWssEas;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/homepage/messageentry/-$$Lambda$MessageEntryPreference$n5-06rceqwhoNHqtVxovdWssEas;-><init>(Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->o:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->b(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 3

    .line 243
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 244
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 245
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 246
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->l:Landroid/animation/AnimatorListenerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->l:Landroid/animation/AnimatorListenerAdapter;

    .line 250
    :cond_0
    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/messageentry/MessageEntryPreference;->k:Landroid/animation/AnimatorSet;

    :cond_1
    return-void
.end method
