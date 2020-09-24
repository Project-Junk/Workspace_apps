.class public Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;
.super Lcom/android/vending/licensing/ILicenseResultListener$Stub;
.source "LibraryChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javiersantos/licensing/LibraryChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultListener"
.end annotation


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103


# instance fields
.field private mOnTimeout:Ljava/lang/Runnable;

.field private final mValidator:Lcom/github/javiersantos/licensing/LibraryValidator;

.field final synthetic this$0:Lcom/github/javiersantos/licensing/LibraryChecker;


# direct methods
.method public constructor <init>(Lcom/github/javiersantos/licensing/LibraryChecker;Lcom/github/javiersantos/licensing/LibraryValidator;)V
    .locals 1
    .param p1, "this$0"    # Lcom/github/javiersantos/licensing/LibraryChecker;
    .param p2, "validator"    # Lcom/github/javiersantos/licensing/LibraryValidator;

    .line 324
    iput-object p1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-direct {p0}, Lcom/android/vending/licensing/ILicenseResultListener$Stub;-><init>()V

    .line 325
    iput-object p2, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->mValidator:Lcom/github/javiersantos/licensing/LibraryValidator;

    .line 326
    new-instance v0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;

    invoke-direct {v0, p0, p1}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$1;-><init>(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;Lcom/github/javiersantos/licensing/LibraryChecker;)V

    iput-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    .line 333
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->startTimeout()V

    .line 334
    return-void
.end method

.method static synthetic access$000(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)Lcom/github/javiersantos/licensing/LibraryValidator;
    .locals 1
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    .line 317
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->mValidator:Lcom/github/javiersantos/licensing/LibraryValidator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;

    .line 317
    invoke-direct {p0}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->clearTimeout()V

    return-void
.end method

.method private clearTimeout()V
    .locals 2

    .line 392
    const-string v0, "LibraryChecker"

    const-string v1, "Clearing timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$600(Lcom/github/javiersantos/licensing/LibraryChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method private startTimeout()V
    .locals 4

    .line 387
    const-string v0, "LibraryChecker"

    const-string v1, "Start monitoring timeout."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$600(Lcom/github/javiersantos/licensing/LibraryChecker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->mOnTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    return-void
.end method


# virtual methods
.method public verifyLicense(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "signedData"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;->this$0:Lcom/github/javiersantos/licensing/LibraryChecker;

    invoke-static {v0}, Lcom/github/javiersantos/licensing/LibraryChecker;->access$600(Lcom/github/javiersantos/licensing/LibraryChecker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener$2;-><init>(Lcom/github/javiersantos/licensing/LibraryChecker$ResultListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 384
    return-void
.end method
