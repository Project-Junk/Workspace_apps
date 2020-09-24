.class public abstract Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;
.super Ljava/lang/Object;
.source "NoDoubleClickListenerEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final MIN_CLICK_DELAY_TIME:I = 0x258


# instance fields
.field private lastClickTime:J

.field private t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->lastClickTime:J

    .line 32
    iput-object p1, p0, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->t:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 25
    iget-wide v2, p0, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 26
    iput-wide v0, p0, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->lastClickTime:J

    .line 27
    iget-object v0, p0, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->t:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/platform/usercenter/common/lib/utils/NoDoubleClickListenerEx;->onNoDoubleClick(Landroid/view/View;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method
