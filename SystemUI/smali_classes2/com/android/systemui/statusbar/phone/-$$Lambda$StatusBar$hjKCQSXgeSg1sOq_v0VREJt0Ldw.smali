.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:Ljava/lang/Runnable;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/lang/Runnable;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$1:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$1:Ljava/lang/Runnable;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$hjKCQSXgeSg1sOq_v0VREJt0Ldw;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$fadeKeyguardAfterLaunchTransition$27$StatusBar(Ljava/lang/Runnable;Z)V

    return-void
.end method
