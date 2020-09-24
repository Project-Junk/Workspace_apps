.class final Lcom/android/settings/IccLockSettings$3;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->a(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/WindowManager;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$3;->c:Lcom/android/settings/IccLockSettings;

    iput-object p2, p0, Lcom/android/settings/IccLockSettings$3;->a:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/settings/IccLockSettings$3;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$3;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$3;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    return-void
.end method
