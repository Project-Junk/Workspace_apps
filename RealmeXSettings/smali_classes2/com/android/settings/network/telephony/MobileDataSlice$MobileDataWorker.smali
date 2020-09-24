.class public Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.super Lcom/android/settings/slices/c;
.source "MobileDataSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileDataWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/c;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 217
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    new-instance p2, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;

    invoke-direct {p2, p0, p1, p0}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;-><init>(Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1067
    iget-object v0, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 224
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 225
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;

    .line 2067
    iget-object v2, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 226
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileDataSlice;->a(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    .line 2258
    invoke-static {v0}, Lcom/android/settings/network/a;->a(I)Landroid/net/Uri;

    move-result-object v0

    .line 2259
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;

    .line 3067
    iget-object v1, p0, Lcom/android/settings/slices/c;->d:Landroid/content/Context;

    .line 3263
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;

    return-void
.end method
