.class Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;
.super Ljava/lang/Object;
.source "LibraryChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

.field final synthetic val$responseCode:I

.field final synthetic val$signature:Ljava/lang/String;

.field final synthetic val$signedData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    .line 340
    iput-object p1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iput p2, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$responseCode:I

    iput-object p3, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    iput-object p4, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 342
    const-string v0, "LibraryChecker"

    const-string v1, "Received response."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iget-object v0, v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$300(Lcom/github/javiersantos/licensing/LibraryChecker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v1}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$400(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)V

    .line 346
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;

    move-result-object v1

    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iget-object v0, v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$500(Lcom/github/javiersantos/licensing/LibraryChecker;)Ljava/security/PublicKey;

    move-result-object v2

    iget v3, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$responseCode:I

    iget-object v4, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$signedData:Ljava/lang/String;

    .line 347
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    iget-object v6, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->val$signature:Ljava/lang/String;

    .line 346
    invoke-virtual/range {v1 .. v6}, Lcom/github/javiersantos/licensing/LibraryValidator;->check(Ljava/security/PublicKey;ILjava/lang/String;Ljava/util/Calendar;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    iget-object v0, v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;->this$1:Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    invoke-static {v1}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$200(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V

    .line 382
    :cond_0
    return-void
.end method
