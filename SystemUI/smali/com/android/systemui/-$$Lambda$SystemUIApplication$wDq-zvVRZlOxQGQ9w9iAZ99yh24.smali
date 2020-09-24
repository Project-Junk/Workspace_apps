.class public final synthetic Lcom/android/systemui/-$$Lambda$SystemUIApplication$wDq-zvVRZlOxQGQ9w9iAZ99yh24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/SystemUIApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/SystemUIApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$SystemUIApplication$wDq-zvVRZlOxQGQ9w9iAZ99yh24;->f$0:Lcom/android/systemui/SystemUIApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$SystemUIApplication$wDq-zvVRZlOxQGQ9w9iAZ99yh24;->f$0:Lcom/android/systemui/SystemUIApplication;

    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->lambda$onCreate$0$SystemUIApplication()V

    return-void
.end method
