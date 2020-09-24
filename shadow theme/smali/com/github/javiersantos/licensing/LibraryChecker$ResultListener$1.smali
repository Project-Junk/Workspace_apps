.class Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;
.super Ljava/lang/Object;
.source "LibraryChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;-><init>(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

.field final synthetic val$this$0:Lcom/github/javiersantos/licensing/LibraryChecker;


# direct methods
.method constructor <init>(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;Lcom/github/javiersantos/licensing/LibraryChecker;)V
    .locals 0
    .param p1, "this$1"    # Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    .line 326
    iput-object p1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iput-object p2, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->val$this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 328
    const-string v0, "LibraryChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iget-object v0, v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v1}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$100(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V

    .line 330
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iget-object v0, v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v1}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$200(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V

    .line 331
    return-void
.end method
