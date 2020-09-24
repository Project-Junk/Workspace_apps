.class public final synthetic Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/process/a$a;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/process/a$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;->f$0:Lcom/coloros/settings/feature/process/a$a;

    iput p2, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;->f$1:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;->f$0:Lcom/coloros/settings/feature/process/a$a;

    iget v1, p0, Lcom/coloros/settings/feature/process/-$$Lambda$a$a$BSjbnEXNBpxn-TtLV6N-VMLrtBY;->f$1:F

    check-cast p1, Lcom/coloros/settings/feature/process/RunningApplications$a;

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/feature/process/a$a;->lambda$BSjbnEXNBpxn-TtLV6N-VMLrtBY(Lcom/coloros/settings/feature/process/a$a;FLcom/coloros/settings/feature/process/RunningApplications$a;)V

    return-void
.end method
