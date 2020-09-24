.class public abstract Lcom/android/internal/telephony/uicc/AbstractSIMRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "AbstractSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;
    }
.end annotation


# instance fields
.field protected mReference:Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 9
    invoke-static {}, Lcom/android/internal/telephony/OppoTelephonyFactory;->getOppoUiccManager()Lcom/android/internal/telephony/OppoUiccManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/OppoUiccManager;->createOppoSIMRecordReference(Lcom/android/internal/telephony/uicc/AbstractSIMRecords;)Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->mReference:Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 20
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 21
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractSIMRecords;->mReference:Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractSIMRecords$SIMRecordReference;->dispose()V

    return-void
.end method
