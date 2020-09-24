.class public Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;
.super Ljava/lang/Object;
.source "KeyguardSliderLayout.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardSliderPageTransformer"
.end annotation


# static fields
.field private static final MIN_SCALE:F = 1.2f


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    .line 1052
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;Landroid/view/View;F)V
    .locals 0

    .line 1052
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->transformView(Landroid/view/View;F)V

    return-void
.end method

.method private defaultTransformPage(Landroid/view/View;F)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1065
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1068
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1069
    instance-of v1, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialFunctionContainer;

    if-eqz v1, :cond_2

    .line 1071
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object p1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    goto/16 :goto_2

    .line 1072
    :cond_2
    instance-of v1, p1, Lcom/coloros/systemui/keyguard/minusscreen/KeyguardMinusOneScreen;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_5

    .line 1074
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    move p2, v2

    goto :goto_0

    .line 1076
    :cond_3
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v2, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_4

    move p2, v3

    .line 1081
    :cond_4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->transformView(Landroid/view/View;F)V

    .line 1082
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2700(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object p1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    goto :goto_2

    .line 1083
    :cond_5
    instance-of v1, p1, Lcom/coloros/systemui/keyguard/wallpaper/pictorial/PictorialPreloadView;

    if-eqz v1, :cond_8

    .line 1085
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v2, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_6

    move p2, v3

    goto :goto_1

    .line 1087
    :cond_6
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {v1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v3, p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isFloatEqual(FF)Z

    move-result v1

    if-eqz v1, :cond_7

    move p2, v2

    .line 1092
    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->transformView(Landroid/view/View;F)V

    .line 1093
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->this$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$1500(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    move-result-object p1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->access$2600(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;FI)V

    :cond_8
    :goto_2
    return-void
.end method

.method private transformView(Landroid/view/View;F)V
    .locals 2

    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    .line 1102
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float p0, p0

    const v0, 0x3e4cccd0    # 0.20000005f

    mul-float/2addr p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    mul-float/2addr p0, p2

    .line 1104
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    const p0, 0x3f99999a    # 1.2f

    const v0, -0x41b33330    # -0.20000005f

    .line 1107
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    mul-float/2addr v1, v0

    add-float/2addr v1, p0

    .line 1108
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1109
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 0

    .line 1057
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout$KeyguardSliderPageTransformer;->defaultTransformPage(Landroid/view/View;F)V

    return-void
.end method
