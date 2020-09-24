.class public final synthetic Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;

    invoke-direct {v0}, Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;->INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$L_kSVHOk5JYXh1dTK63suS2Oo_I;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/coloros/systemui/common/multiluser/IMultiUserListener;

    invoke-interface {p1}, Lcom/coloros/systemui/common/multiluser/IMultiUserListener;->onPresent()V

    return-void
.end method
