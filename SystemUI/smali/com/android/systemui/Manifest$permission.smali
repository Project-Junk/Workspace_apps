.class public final Lcom/android/systemui/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final IDENTITY:Ljava/lang/String; = "android.permission.systemui.IDENTITY"

.field public static final PLUGIN:Ljava/lang/String; = "com.android.systemui.permission.PLUGIN"

.field public static final SELF:Ljava/lang/String; = "com.android.systemui.permission.SELF"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method