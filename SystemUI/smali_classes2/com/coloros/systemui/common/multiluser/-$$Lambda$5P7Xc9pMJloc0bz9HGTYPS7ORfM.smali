.class public final synthetic Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;

    invoke-direct {v0}, Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;->INSTANCE:Lcom/coloros/systemui/common/multiluser/-$$Lambda$5P7Xc9pMJloc0bz9HGTYPS7ORfM;

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

    check-cast p1, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;

    invoke-virtual {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHolder;->onUserSwitch()V

    return-void
.end method
