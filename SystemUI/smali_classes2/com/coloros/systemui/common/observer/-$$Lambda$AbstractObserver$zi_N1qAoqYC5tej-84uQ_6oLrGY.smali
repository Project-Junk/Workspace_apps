.class public final synthetic Lcom/coloros/systemui/common/observer/-$$Lambda$AbstractObserver$zi_N1qAoqYC5tej-84uQ_6oLrGY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/coloros/systemui/common/observer/-$$Lambda$AbstractObserver$zi_N1qAoqYC5tej-84uQ_6oLrGY;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/systemui/common/observer/-$$Lambda$AbstractObserver$zi_N1qAoqYC5tej-84uQ_6oLrGY;->f$0:Z

    check-cast p1, Lcom/coloros/systemui/common/observer/IObserverListener;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->lambda$onChange$0(ZLcom/coloros/systemui/common/observer/IObserverListener;)V

    return-void
.end method
