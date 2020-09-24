.class Lcolor/support/v7/widget/cardview/CardViewApi17Impl;
.super Lcolor/support/v7/widget/cardview/CardViewBaseImpl;
.source "CardViewApi17Impl.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcolor/support/v7/widget/cardview/CardViewBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public initStatic()V
    .locals 1

    .line 32
    new-instance v0, Lcolor/support/v7/widget/cardview/CardViewApi17Impl$1;

    invoke-direct {v0, p0}, Lcolor/support/v7/widget/cardview/CardViewApi17Impl$1;-><init>(Lcolor/support/v7/widget/cardview/CardViewApi17Impl;)V

    sput-object v0, Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcolor/support/v7/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    return-void
.end method
