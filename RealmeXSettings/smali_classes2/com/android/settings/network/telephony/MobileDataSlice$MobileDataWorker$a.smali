.class public final Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;
.super Landroid/database/ContentObserver;
.source "MobileDataSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

.field private final b:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;Landroid/os/Handler;Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;->a:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    .line 248
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 249
    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;->b:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker$a;->b:Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;

    .line 1240
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/MobileDataSlice$MobileDataWorker;->f()V

    return-void
.end method
