.class Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/atomic/AtomicInteger;Landroid/content/Context;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 225
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 226
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 227
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 232
    iget-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mPremiumSmsRule:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sms_short_code_rule"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
