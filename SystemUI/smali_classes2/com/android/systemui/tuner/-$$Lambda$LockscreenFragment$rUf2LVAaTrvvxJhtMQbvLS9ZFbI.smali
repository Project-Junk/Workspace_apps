.class public final synthetic Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/tuner/LockscreenFragment;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/LockscreenFragment;Ljava/lang/String;Landroid/app/AlertDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$2:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$0:Lcom/android/systemui/tuner/LockscreenFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/tuner/-$$Lambda$LockscreenFragment$rUf2LVAaTrvvxJhtMQbvLS9ZFbI;->f$2:Landroid/app/AlertDialog;

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$showSelectDialog$2$LockscreenFragment(Ljava/lang/String;Landroid/app/AlertDialog;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method
