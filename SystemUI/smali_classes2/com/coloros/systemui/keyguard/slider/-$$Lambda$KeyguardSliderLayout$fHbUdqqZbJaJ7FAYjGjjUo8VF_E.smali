.class public final synthetic Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$fHbUdqqZbJaJ7FAYjGjjUo8VF_E;
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

    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$fHbUdqqZbJaJ7FAYjGjjUo8VF_E;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$fHbUdqqZbJaJ7FAYjGjjUo8VF_E;->f$0:Z

    check-cast p1, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->lambda$setQsExpanded$1(ZLcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)V

    return-void
.end method
