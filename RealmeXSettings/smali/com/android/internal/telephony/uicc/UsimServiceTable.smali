.class public final Lcom/android/internal/telephony/uicc/UsimServiceTable;
.super Lcom/android/internal/telephony/uicc/IccServiceTable;
.source "UsimServiceTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;
    }
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected final getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UsimServiceTable"

    return-object v0
.end method

.method protected final getValues()[Ljava/lang/Object;
    .locals 1

    .line 157
    invoke-static {}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->values()[Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;

    move-result-object v0

    return-object v0
.end method

.method public final isAvailable(Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;)Z
    .locals 0
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UsimServiceTable$UsimService;->ordinal()I

    move-result p1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccServiceTable;->isAvailable(I)Z

    move-result p1

    return p1
.end method
