.class public final synthetic Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$qx8IymMqH5O8RA3UdQf3cJ8kyus;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$qx8IymMqH5O8RA3UdQf3cJ8kyus;->f$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/slider/-$$Lambda$KeyguardSliderLayout$qx8IymMqH5O8RA3UdQf3cJ8kyus;->f$0:Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;

    check-cast p1, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    check-cast p2, Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/keyguard/slider/KeyguardSliderLayout;->lambda$sortPages$0$KeyguardSliderLayout(Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;Lcom/coloros/systemui/keyguard/slider/IKeyguardSliderPager;)I

    move-result p0

    return p0
.end method
