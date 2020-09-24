.class final Lcom/android/settings/l$b$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/l$b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/android/settings/l$b;


# direct methods
.method constructor <init>(Lcom/android/settings/l$b;Landroid/view/View;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/settings/l$b$2;->b:Lcom/android/settings/l$b;

    iput-object p2, p0, Lcom/android/settings/l$b$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/android/settings/l$b$2;->b:Lcom/android/settings/l$b;

    iget-object v1, p0, Lcom/android/settings/l$b$2;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/l$b;->a(Lcom/android/settings/l$b;Landroid/view/View;)V

    return-void
.end method
