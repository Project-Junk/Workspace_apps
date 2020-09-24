.class final Lcom/android/setupwizardlib/b/j$1;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/b/j;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/setupwizardlib/b/j;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/b/j;Z)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/android/setupwizardlib/b/j$1;->b:Lcom/android/setupwizardlib/b/j;

    iput-boolean p2, p0, Lcom/android/setupwizardlib/b/j$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/android/setupwizardlib/b/j$1;->b:Lcom/android/setupwizardlib/b/j;

    invoke-static {v0}, Lcom/android/setupwizardlib/b/j;->a(Lcom/android/setupwizardlib/b/j;)Lcom/android/setupwizardlib/b/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/setupwizardlib/b/j$1;->b:Lcom/android/setupwizardlib/b/j;

    invoke-static {v0}, Lcom/android/setupwizardlib/b/j;->a(Lcom/android/setupwizardlib/b/j;)Lcom/android/setupwizardlib/b/j$a;

    :cond_0
    return-void
.end method
