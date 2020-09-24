.class public final synthetic Lcom/coloros/systemui/keyguard/security/-$$Lambda$SecurityTouchListener$XuXoYBDnPHVyvUaXqSGfb9UFkPU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/-$$Lambda$SecurityTouchListener$XuXoYBDnPHVyvUaXqSGfb9UFkPU;->f$0:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/-$$Lambda$SecurityTouchListener$XuXoYBDnPHVyvUaXqSGfb9UFkPU;->f$0:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->lambda$new$0$SecurityTouchListener(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
