.class Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$2;
.super Landroid/database/ContentObserver;
.source "ClockExtraTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;Landroid/os/Handler;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$2;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 168
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView$2;->this$0:Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;->access$000(Lcom/coloros/systemui/keyguard/clock/ClockExtraTextView;)V

    return-void
.end method
