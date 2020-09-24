.class public final synthetic Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;

    invoke-direct {v0}, Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;-><init>()V

    sput-object v0, Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;->INSTANCE:Lcom/coloros/systemui/blackscreen/utils/-$$Lambda$BlackScreenAnimatorUtil$89DTOO5eH3ba4Cp8aRexppYZjyk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/coloros/systemui/blackscreen/utils/BlackScreenAnimatorUtil;->lambda$static$0()Landroid/view/animation/OppoBezierInterpolator;

    move-result-object p0

    return-object p0
.end method
