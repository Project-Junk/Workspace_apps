.class public final synthetic Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorFloatWindowSwitchPreferenceController$gcxi2PHKYIZvEgNsPXOHaHzWoUY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorFloatWindowSwitchPreferenceController$gcxi2PHKYIZvEgNsPXOHaHzWoUY;->f$0:Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/details/controller/-$$Lambda$ColorFloatWindowSwitchPreferenceController$gcxi2PHKYIZvEgNsPXOHaHzWoUY;->f$0:Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/details/controller/ColorFloatWindowSwitchPreferenceController;->lambda$displayPreference$0$ColorFloatWindowSwitchPreferenceController(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
