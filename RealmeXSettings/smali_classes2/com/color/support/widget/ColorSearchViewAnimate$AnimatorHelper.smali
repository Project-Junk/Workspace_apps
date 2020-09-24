.class Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;
.super Ljava/lang/Object;
.source "ColorSearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSearchViewAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorHelper"
.end annotation


# instance fields
.field private volatile mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDuration:J

.field private mIconTranslation:I

.field private mToEditEndRunnable:Ljava/lang/Runnable;

.field private mToEditStartRunnable:Ljava/lang/Runnable;

.field private mToNormalEndRunnable:Ljava/lang/Runnable;

.field private mToNormalStartRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/color/support/widget/ColorSearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 2

    .line 1089
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1800(Lcom/color/support/widget/ColorSearchViewAnimate;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1034
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1036
    new-instance p1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$1;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$1;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    .line 1051
    new-instance p1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$2;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$2;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    .line 1062
    new-instance p1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$3;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    .line 1077
    new-instance p1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;

    invoke-direct {p1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$4;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1000(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToEditEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToNormalStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToNormalEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$900(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mToEditStartRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private startCancelButtonEnterValueAnimator()V
    .locals 3

    .line 1354
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1355
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    const/4 v0, 0x2

    .line 1356
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1357
    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1358
    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$12;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$12;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1368
    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$13;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1381
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startCancelButtonExitValueAnimator()V
    .locals 3

    const/4 v0, 0x2

    .line 1323
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1324
    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1325
    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$10;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1335
    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$11;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$11;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1350
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startSearchIconFadeInAnimator()V
    .locals 3

    .line 1171
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1173
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1174
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1176
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1177
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$6;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$6;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    .line 1178
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1185
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private startSearchIconFadeOutAnimator()V
    .locals 4

    .line 1151
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1153
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1154
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1155
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$5;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$5;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    .line 1157
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1164
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public runStateChangeAnimation(I)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2300(Lcom/color/support/widget/ColorSearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1102
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startToEditAnimator()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1104
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startToNormalAnimator()V

    :cond_2
    return-void
.end method

.method startBackgroundEnterAnimator()V
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1266
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1267
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1268
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1269
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method startBackgroundExitAnimator()V
    .locals 3

    .line 1247
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1248
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1249
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1250
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$9;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$9;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    .line 1251
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method startCancelButtonEnterAnimator()V
    .locals 2

    .line 1299
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1301
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1302
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1303
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1304
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonEnterValueAnimator()V

    :cond_0
    return-void
.end method

.method startCancelButtonExitAnimator()V
    .locals 2

    .line 1309
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 1311
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1312
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->isPerformClicked()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setPerformClicked(Z)V

    .line 1318
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V

    :cond_1
    return-void
.end method

.method startSearchIconEnterAnimator()V
    .locals 3

    .line 1218
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1219
    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    .line 1220
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$200(Lcom/color/support/widget/ColorSearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1221
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1227
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1229
    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1230
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1231
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 1232
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1233
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1234
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$8;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$8;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    .line 1235
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1242
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method startSearchIconExitAnimator()V
    .locals 3

    .line 1190
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1191
    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    if-nez v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$200(Lcom/color/support/widget/ColorSearchViewAnimate;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    goto :goto_0

    .line 1195
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1200
    :cond_1
    :goto_0
    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mIconTranslation:I

    .line 1201
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 1202
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1203
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x42a00000    # 80.0f

    .line 1204
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$7;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper$7;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)V

    .line 1205
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1212
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void
.end method

.method startSearchViewEnterAnimator()V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setAlpha(F)V

    .line 1278
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1280
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1281
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method startSearchViewExitAnimator()V
    .locals 3

    .line 1287
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setAlpha(F)V

    .line 1289
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setVisibility(I)V

    .line 1290
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1291
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mDuration:J

    .line 1292
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method startToEditAnimator()V
    .locals 3

    .line 1112
    monitor-enter p0

    .line 1113
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    monitor-exit p0

    return-void

    .line 1116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2300(Lcom/color/support/widget/ColorSearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1118
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2400(Lcom/color/support/widget/ColorSearchViewAnimate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchIconExitAnimator()V

    goto :goto_0

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchIconFadeOutAnimator()V

    .line 1123
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startBackgroundExitAnimator()V

    .line 1124
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchViewEnterAnimator()V

    .line 1125
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonEnterAnimator()V

    return-void

    :catchall_0
    move-exception v0

    .line 1116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startToNormalAnimator()V
    .locals 3

    .line 1132
    monitor-enter p0

    .line 1133
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->mAnimatingAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    monitor-exit p0

    return-void

    .line 1136
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2300(Lcom/color/support/widget/ColorSearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1138
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1140
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->this$0:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->access$2400(Lcom/color/support/widget/ColorSearchViewAnimate;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1141
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchIconEnterAnimator()V

    goto :goto_0

    .line 1143
    :cond_1
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchIconFadeInAnimator()V

    .line 1145
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startBackgroundEnterAnimator()V

    .line 1146
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startSearchViewExitAnimator()V

    .line 1147
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->startCancelButtonExitAnimator()V

    return-void

    :catchall_0
    move-exception v0

    .line 1136
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
