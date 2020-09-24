.class public final synthetic Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

.field private final synthetic f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;Lcom/android/settings/applications/specialaccess/deviceadmin/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;->f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;->f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;->f$0:Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/deviceadmin/-$$Lambda$DeviceAdminListPreferenceController$6R1rnZBtn2EkqglYXaBGZHtVy2g;->f$1:Lcom/android/settings/applications/specialaccess/deviceadmin/a;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/specialaccess/deviceadmin/DeviceAdminListPreferenceController;->lambda$bindPreference$0$DeviceAdminListPreferenceController(Lcom/android/settings/applications/specialaccess/deviceadmin/a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
