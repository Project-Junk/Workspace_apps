.class public Lcom/android/systemui/shared/system/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# instance fields
.field private final mWrapped:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/shared/system/ContextCompat;->mWrapped:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/system/ContextCompat;->mWrapped:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    return p0
.end method
