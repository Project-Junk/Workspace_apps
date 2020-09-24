.class public abstract Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
.super Ljava/lang/Thread;
.source "KeyguardAbsSimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CheckSimThread"
.end annotation


# instance fields
.field final mCheckPin:Ljava/lang/String;

.field final mCheckPuk:Ljava/lang/String;

.field mCheckResult:[I

.field final mCheckSlotId:I

.field final mCheckSubId:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x2

    .line 91
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    .line 98
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckPin:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckPuk:Ljava/lang/String;

    .line 100
    iput p4, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckSlotId:I

    .line 101
    iput p5, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckSubId:I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public synthetic lambda$run$0$KeyguardAbsSimView$CheckSimThread()V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->onSimCheckResponse(ZI)V

    return-void
.end method

.method protected abstract onSimCheckResponse(ZI)V
.end method

.method public run()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->supplySimCheckResult()[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    const-string v1, "AbsKeyguardSimView"

    if-nez v0, :cond_0

    const-string v0, "run(), mCheckResult = null"

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run(), "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSimView$CheckSimThread$ahqB1u-oyfeq6W1Pt4b-HScbK_s;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardAbsSimView$CheckSimThread$ahqB1u-oyfeq6W1Pt4b-HScbK_s;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;)V

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->post(Ljava/lang/Runnable;)Z

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method protected abstract supplySimCheckResult()[I
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", checkPin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckPin:Ljava/lang/String;

    const-string v2, "null"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkPuk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckPuk:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", checkSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checkResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;->mCheckResult:[I

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
