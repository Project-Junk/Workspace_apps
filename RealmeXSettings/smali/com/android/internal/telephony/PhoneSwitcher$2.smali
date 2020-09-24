.class Lcom/android/internal/telephony/PhoneSwitcher$2;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/PhoneSwitcher;-><init>(ILandroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneSwitcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/os/Looper;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onPhoneCapabilityChanged(Landroid/telephony/PhoneCapability;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSwitcher$2;->this$0:Lcom/android/internal/telephony/PhoneSwitcher;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/PhoneSwitcher;->access$400(Lcom/android/internal/telephony/PhoneSwitcher;Landroid/telephony/PhoneCapability;)V

    return-void
.end method
