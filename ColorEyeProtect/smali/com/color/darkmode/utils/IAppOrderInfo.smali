.class public Lcom/color/darkmode/utils/IAppOrderInfo;
.super Ljava/lang/Object;


# instance fields
.field private initialChar:C

.field private label:Ljava/lang/String;

.field private orderInfo1:Ljava/lang/String;

.field private orderInfo2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1

    const-string v0, "label"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderInfo2"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->label:Ljava/lang/String;

    iput-object p2, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo1:Ljava/lang/String;

    iput-object p3, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo2:Ljava/lang/String;

    iput-char p4, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->initialChar:C

    return-void
.end method


# virtual methods
.method public final getInitialChar()C
    .locals 0

    iget-char p0, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->initialChar:C

    return p0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderInfo1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo1:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderInfo2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo2:Ljava/lang/String;

    return-object p0
.end method

.method public final setInitialChar(C)V
    .locals 0

    iput-char p1, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->initialChar:C

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public final setOrderInfo1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo1:Ljava/lang/String;

    return-void
.end method

.method public final setOrderInfo2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/color/darkmode/utils/IAppOrderInfo;->orderInfo2:Ljava/lang/String;

    return-void
.end method
