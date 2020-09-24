.class public abstract Lcom/android/internal/telephony/AbstractPhone;
.super Landroid/os/Handler;
.source "AbstractPhone.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneInternalInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractPhone$PhoneReference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Phone"


# instance fields
.field protected mReference:Lcom/android/internal/telephony/AbstractPhone$PhoneReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 32
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoPhoneManager()Lcom/android/internal/telephony/OppoPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/OppoPhoneManager;->createOppoPhoneReference(Lcom/android/internal/telephony/AbstractPhone;)Lcom/android/internal/telephony/AbstractPhone$PhoneReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractPhone;->mReference:Lcom/android/internal/telephony/AbstractPhone$PhoneReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhone;->mReference:Lcom/android/internal/telephony/AbstractPhone$PhoneReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhone$PhoneReference;->dispose()V

    return-void
.end method
