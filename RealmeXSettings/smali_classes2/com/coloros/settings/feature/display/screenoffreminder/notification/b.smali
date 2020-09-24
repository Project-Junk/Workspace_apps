.class public Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;
.super Ljava/lang/Object;
.source "HandlerThreadTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/screenoffreminder/notification/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "b"

.field private static d:Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;


# instance fields
.field public b:Landroid/os/HandlerThread;

.field public c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->d:Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;
    .locals 1

    .line 33
    sget-object v0, Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;->d:Lcom/coloros/settings/feature/display/screenoffreminder/notification/b;

    return-object v0
.end method
